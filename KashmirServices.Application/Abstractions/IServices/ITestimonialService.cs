using KashmirServices.Application.RRModels;
using KashmirServices.Application.RRModels.User;
using KashmirServices.Application.Shared;
using KashmirServices.Domain.Enums;

namespace KashmirServices.Application.Abstractions.IServices;

public interface ITestimonialService
{
    Task<APIResponse<string>> Add(TestimonialRequest model);

    Task<APIResponse<string>> Delete(Guid id);


    Task<APIResponse<string>> ChangeTestimonialStatus(UpdateTestimonialStatusRequest model);


    Task<APIResponse<IEnumerable<TestimonialResponse>>> GetAllTestimonials();

    Task<APIResponse<IEnumerable<TestimonialResponse>>> GetAllActiveTestimonials();

    Task<APIResponse<IEnumerable<TestimonialResponse>>> MyTestimonials();
}
