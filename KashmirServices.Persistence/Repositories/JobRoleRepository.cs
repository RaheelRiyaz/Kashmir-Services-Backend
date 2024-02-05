using KashmirServices.Application.Abstractions.IRepositories;
using KashmirServices.Application.RRModels;
using KashmirServices.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

namespace KashmirServices.Persistence.Repositories
{
    public class JobRoleRepository : BaseRepository<JobRole>, IJobRoleRepository
    {
        public JobRoleRepository(KashmirServicesDbContext context) : base(context)
        {
        }

        //public Task<int> AddJobRoleToEngineer(EngineerJobRoleRequest model)
        //{
        //    throw new NotImplementedException();
        //}
        // Engineer By Id
      


		string managerQuery = $@"	SELECT U.FullName, U.Gender, U.PhoneNumber, U.Email, C.[Name], C.[Description] ,
									C.ManagerId , M.FullName AS ManagerName, M.PhoneNumber AS ManagerPhoneNumber
									FROM Users U
									INNER JOIN JobRoles E
									ON U.Id = E.EngineerId
									INNER JOIN  Categories C
									ON C.Id = E.CategoryId
									INNER JOIN Users M
									ON M.Id = C.ManagerId
									WHERE M.Id ='1F437110-BC80-43D8-8714-BE7B0B805D7C' ";

		private readonly string baseQuery = $@"  SELECT C.Id AS CategoryId, E.EngineerId, U.FullName, U.Gender, U.PhoneNumber, U.Email,
										C.[Name] AS JobRole, C.[Description] , C.ManagerId , M.FullName AS ManagerName
										FROM Users U
										INNER JOIN JobRoles E
										ON U.Id = E.EngineerId
										INNER JOIN  Categories C
										ON C.Id = E.CategoryId
										INNER JOIN Users M
										ON M.Id = C.ManagerId ";

		

        public async Task<IEnumerable<JobRolesResponse>> GetMyJobRolesAsync(Guid id)
        {
            string query = $@"	SELECT C.Id AS CategoryId, C.[Name] AS JobRole,
							C.[Description] , C.ManagerId , M.FullName AS ManagerName, M.PhoneNumber AS ManagerPhoneNumber,
							M.Email
							FROM Users U
							INNER JOIN JobRoles E
							ON U.Id = E.EngineerId
							INNER JOIN  Categories C
							ON C.Id = E.CategoryId
							INNER JOIN Users M
							ON M.Id = C.ManagerId
							WHERE U.Id =@id ";
			return await QueryAsync<JobRolesResponse>(query, new { id });
        }

        public async Task<IEnumerable<EngineersJobRoleResponse>> GetMyEngineersByCategoryIdAsync(Guid id, Guid managerId)
        {
            return await QueryAsync<EngineersJobRoleResponse>(baseQuery + $@"	WHERE C.Id = @id AND C.ManagerId = @managerId", new { id, managerId });

        }


        public async Task<IEnumerable<EngineersJobRoleResponse>> GetAllEngineersByCategoryId(Guid categoryId)
        {
            return await QueryAsync<EngineersJobRoleResponse>(baseQuery + $@"WHERE C.Id = @categoryId", new { categoryId });
        }

        public async Task<IEnumerable<EngineersJobRoleResponse>> GetAllEngineersByManagerId(Guid managerId)
        {
            return await QueryAsync<EngineersJobRoleResponse>(baseQuery + $@"	WHERE  C.ManagerId = @managerId", new {  managerId });
        }
    }

}
