using KashmirServices.Application.RRModels;
using KashmirServices.Application.RRModels.User;
using KashmirServices.Application.Shared;
using KashmirServices.Domain.Entities;
using KashmirServices.Domain.Enums;

namespace KashmirServices.Application.Abstractions.IRepositories;

public interface ITestimonialRepository : IBaseRepository<Testimonial>
{
    Task<IEnumerable<TestimonialResponse>> GetAllTestimonials();


    Task<IEnumerable<TestimonialResponse>> GetAllActiveTestimonials();

    Task<IEnumerable<TestimonialResponse>> GetMyTestimonials(Guid customerId);
}
