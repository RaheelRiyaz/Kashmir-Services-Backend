using AutoMapper;
using KashmirServices.Application.Abstractions.Identity;
using KashmirServices.Application.Abstractions.IRepositories;
using KashmirServices.Application.Abstractions.IServices;
using KashmirServices.Application.RRModels;
using KashmirServices.Application.RRModels.User;
using KashmirServices.Application.Shared;
using KashmirServices.Domain.Entities;
using KashmirServices.Domain.Enums;

namespace KashmirServices.Application.Services;

public sealed class ManagerService : IManagerService
{
    private readonly IManagerRepository managerRepository;
    private readonly ICallBookingRepository callBookingRepository;
    private readonly IBaseRepository<AssignedEngineer> assignEngineerRepository;
    private readonly IContextService contextService;
    private readonly IMapper mapper;
    private readonly IJobRoleRepository jobRoleRepository;
    private readonly ICategoryRepository categoryRepository;

    public ManagerService(
        IManagerRepository managerRepository,
        ICallBookingRepository callBookingRepository,
        IBaseRepository<AssignedEngineer> assignEngineerRepository,
        IContextService contextService,
        IMapper mapper,
         IJobRoleRepository jobRoleRepository,
        ICategoryRepository categoryRepository)
    {
        this.managerRepository = managerRepository;
        this.callBookingRepository = callBookingRepository;
        this.assignEngineerRepository = assignEngineerRepository;
        this.contextService = contextService;
        this.mapper = mapper;
        this.jobRoleRepository = jobRoleRepository;
        this.categoryRepository = categoryRepository;


    }


    public async Task<APIResponse<IEnumerable<CategoryResponse>>> GetCategoriesByManager(Guid? id)
    {
        var userId =  id ?? contextService.GetUserId().Value;
        var categories = await categoryRepository.GetManagerCategoriesAsync(userId);

        if (categories.Any())
            return APIResponse<IEnumerable<CategoryResponse>>.SuccessResponse(categories);

        return APIResponse<IEnumerable<CategoryResponse>>.ErrorResponse("No Category found", APIStatusCodes.NotFound);
    }


    public async Task<APIResponse<string>> AssignJobRoleToEngineer(JobRoleRequest model)
    {
        var engineerExist = await jobRoleRepository.FirstOrDefaultAsync(x => x.CategoryId == model.CategoryId && x.EngineerId == model.EngineerId);
        if (engineerExist is not null)
            return APIResponse<string>.ErrorResponse("Engineer already registered", APIStatusCodes.Conflict);

        JobRole engineerJobRole = new()
        {
            CategoryId = model.CategoryId,
            EngineerId = model.EngineerId,
        };

        int returnValue = await jobRoleRepository.InsertAsync(engineerJobRole);
        if (returnValue > 0)
            return APIResponse<string>.SuccessResponse(null, "Engineer assigned successfully");

        return APIResponse<string>.ErrorResponse(APIMessages.TechnicalError, APIStatusCodes.InternalServerError); ;
    }


    public async Task<APIResponse<int>> CallAssignToEngineer(AssignEngineerRequest model)
    {

        var isAlreadyAssigned = await assignEngineerRepository.IsExist(x => x.CallBookingId == model.CallBookingId && x.CallStatus == CallStatus.Open);

        if (isAlreadyAssigned)
            return APIResponse<int>.ErrorResponse("engineer is already assigned", APIStatusCodes.Conflict);

        var assignedEngineer = mapper.Map<AssignedEngineer>(model);
        assignedEngineer.CreatedBy = contextService.GetUserId();


        int returnValue = await assignEngineerRepository.InsertAsync(assignedEngineer);
        if (returnValue > 0)
        {
            var callBooking = await callBookingRepository.GetByIdAsync(model.CallBookingId);
            callBooking!.CallBookingStatus = CallBookingStatus.InProgress;
           // callBooking.JobNo = new Random().Next(100, 10000).ToString();// pendin method which should give me unique JOBNO
            await callBookingRepository.UpdateAsync(callBooking);
            return APIResponse<int>.SuccessResponse(1, "Call Assigned to engineer successfully");
        }

        return APIResponse<int>.ErrorResponse(APIMessages.TechnicalError, APIStatusCodes.InternalServerError);

    }


    public async Task<APIResponse<IEnumerable<DetailedJobSheet>>> GetMyEngineersJobSheet(Guid? managerId)
    {
        var manId = managerId ?? contextService.GetUserId().Value;
        var jobSheetResponse = await managerRepository.GetMyEngineersJobSheet(manId);
        if (jobSheetResponse.Any())
            return APIResponse<IEnumerable<DetailedJobSheet>>.SuccessResponse(jobSheetResponse);

        return APIResponse<IEnumerable<DetailedJobSheet>>.ErrorResponse("No Job Sheet Found", APIStatusCodes.NotFound); ;
    }

    public async Task<APIResponse<DetailedJobSheet>> GetJobSheetByJobNo(string jobNo)
    {
        var jobSheetResponse = await managerRepository.GetJobSheetByJobNo(jobNo);
        if (jobSheetResponse is not null)
            return APIResponse<DetailedJobSheet>.SuccessResponse(jobSheetResponse);

        return APIResponse<DetailedJobSheet>.ErrorResponse("No Job Sheet Found", APIStatusCodes.NotFound); ;
    }

  


    public async Task<APIResponse<IEnumerable<DetailedCallBookingResponse>>> GetManagerBookings(Guid? managerId)
    {
        var userId = managerId ?? contextService.GetUserId().Value;


        var bookingResponse = await callBookingRepository.GetManagerBookings(userId);

        if (bookingResponse is null)
            return APIResponse<IEnumerable<DetailedCallBookingResponse>>.ErrorResponse("No Booking Found", APIStatusCodes.NotFound);

        return APIResponse<IEnumerable<DetailedCallBookingResponse>>.SuccessResponse(bookingResponse);
    }

    public async Task<APIResponse<DetailedCallBookingResponse>> GetCallBookingById(Guid id)
    {
        var callBookingResponse = await callBookingRepository.GetCallBookingById(id);
        if (callBookingResponse is null)
            return APIResponse<DetailedCallBookingResponse>.ErrorResponse("No Booking Found", APIStatusCodes.NotFound);
        return APIResponse<DetailedCallBookingResponse>.SuccessResponse(callBookingResponse);
    }

    public async Task<APIResponse<DetailedCallBookingResponse>> UpdateCallBookingStatus(UpdateCallBookingStatusRequest model)
    {
        int returnValue = await callBookingRepository.UpdateCallBookingStatus(model);
        if (returnValue > 0)
        {
            var callBookingResponse = await callBookingRepository.GetCallBookingById(model.Id);
            return APIResponse<DetailedCallBookingResponse>.SuccessResponse(callBookingResponse);
        }
        return APIResponse<DetailedCallBookingResponse>.ErrorResponse(APIMessages.TechnicalError, APIStatusCodes.InternalServerError);
    }


    public async Task<APIResponse<IEnumerable<DetailedJobSheet>>> GetJobSheetByCallStatus(CallStatus callStatus)
    {
        var managerId = contextService.GetUserId().Value;
        var jobSheetResponse = await managerRepository.GetJobSheetByCallStatus(managerId, callStatus);
        if (jobSheetResponse.Any())
            return APIResponse<IEnumerable<DetailedJobSheet>>.SuccessResponse(jobSheetResponse);

        return APIResponse<IEnumerable<DetailedJobSheet>>.ErrorResponse("No Job Sheet Found", APIStatusCodes.NotFound); 
    }
 

    public async Task<APIResponse<IEnumerable<DetailedJobSheet>>> GetEngineersJobSheetByCallStatus(Guid engineerId, CallStatus callStatus)
    {
        var managerId = contextService.GetUserId().Value;
        var jobSheetResponse = await managerRepository.GetEngineersJobSheetByCallStatus(managerId, engineerId, callStatus);
        if (jobSheetResponse.Any())
            return APIResponse<IEnumerable<DetailedJobSheet>>.SuccessResponse(jobSheetResponse);

        return APIResponse<IEnumerable<DetailedJobSheet>>.ErrorResponse("No Job Sheet Found", APIStatusCodes.NotFound); ;
    }

  
}
