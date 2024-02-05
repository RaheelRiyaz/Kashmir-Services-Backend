using KashmirServices.Application.Abstractions.IRepositories;
using KashmirServices.Application.RRModels;
using KashmirServices.Application.RRModels.User;
using KashmirServices.Domain.Entities;
using KashmirServices.Domain.Enums;
using Microsoft.EntityFrameworkCore;

namespace KashmirServices.Persistence.Repositories;

internal sealed class TestimonialRepository : BaseRepository<Testimonial>, ITestimonialRepository
{
    private readonly KashmirServicesDbContext context;

    public TestimonialRepository(KashmirServicesDbContext context) : base(context)
    {
        this.context = context;
    }

    private readonly string baseQuery = $@"SELECT T.Id, U.Id AS UserId,  U.FullName,  F.FilePath ,	T.[Description], T.IsActive, T.CreatedOn
							                FROM Testimonials T
							                INNER JOIN Users U
							                ON U.Id = T.CustomerId
                                            LEFT JOIN AppFiles F
                                            ON U.Id = F.EntityId  ";

    public async Task<IEnumerable<TestimonialResponse>> GetAllTestimonials()
    { 
        return await QueryAsync<TestimonialResponse>(baseQuery + " ORDER BY T.CreatedOn DESC ", null);
    }

    public async Task<IEnumerable<TestimonialResponse>> GetAllActiveTestimonials()
    {
        return await QueryAsync<TestimonialResponse>(baseQuery + " WHERE T.IsActive = 1 ORDER BY T.CreatedOn DESC ", null);
    }

    public async Task<IEnumerable<TestimonialResponse>> GetMyTestimonials(Guid customerId)
    {
        return await QueryAsync<TestimonialResponse>(baseQuery + " WHERE T.CustomerId =@customerId ORDER BY T.CreatedOn DESC ", new { customerId });

    }
}
