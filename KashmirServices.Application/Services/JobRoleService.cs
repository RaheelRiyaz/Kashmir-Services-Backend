using AutoMapper;
using KashmirServices.Application.Abstractions.Identity;
using KashmirServices.Application.Abstractions.IRepositories;
using KashmirServices.Application.Abstractions.IServices;
using KashmirServices.Application.RRModels;
using KashmirServices.Application.Shared;
using KashmirServices.Domain.Entities;

namespace KashmirServices.Application.Services;

public sealed class JobRoleService : IJobRoleService
{
    private readonly IJobRoleRepository repository;
    private readonly IBaseRepository<JobRole> engineerRepository;
    private readonly IContextService contextService;
    private readonly IMapper mapper;

    public JobRoleService(
        IJobRoleRepository repository,
        IBaseRepository<JobRole> engineerRepository,
        IContextService contextService,
        IMapper mapper)
    {
        this.repository = repository;
        this.engineerRepository = engineerRepository;
        this.contextService = contextService;
        this.mapper = mapper;
    }

    public async Task<APIResponse<IEnumerable<EngineersJobRoleResponse>>> GetMyEngineersByCategoryIdAsync(Guid id)
    {
        var managerId =  contextService.GetUserId().Value;
        var responses = await repository.GetMyEngineersByCategoryIdAsync(id,managerId);
        if (responses.Any())
            return APIResponse<IEnumerable<EngineersJobRoleResponse>>.SuccessResponse(responses, "success");

        return APIResponse<IEnumerable<EngineersJobRoleResponse>>.ErrorResponse(APIMessages.NotFound, APIStatusCodes.NotFound); ;

    }

    public async Task<APIResponse<IEnumerable<JobRolesResponse>>> GetMyJobRolesAsync()
    {
        var userId = contextService.GetUserId().Value;
        var responses= await repository.GetMyJobRolesAsync(userId);
        if (responses.Any())
            return APIResponse< IEnumerable<JobRolesResponse> >.SuccessResponse(responses ,"success");

        return APIResponse<IEnumerable<JobRolesResponse>>.ErrorResponse(APIMessages.NotFound, APIStatusCodes.NotFound); 
    }


    public async Task<APIResponse<IEnumerable<EngineersJobRoleResponse>>> GetAllEngineersByCategoryId(Guid categoryId)
    {
        var userResponse = await repository.GetAllEngineersByCategoryId(categoryId);
        return APIResponse<IEnumerable<EngineersJobRoleResponse>>.SuccessResponse(userResponse);
    }

    public async Task<APIResponse<IEnumerable<EngineersJobRoleResponse>>> GetAllEngineersByManagerIdAsync(Guid? managerid)
    {
        var userId = managerid ?? contextService.GetUserId().Value;

        var userResponse = await repository.GetAllEngineersByManagerId(userId);
        return APIResponse<IEnumerable<EngineersJobRoleResponse>>.SuccessResponse(userResponse);
    }
}
