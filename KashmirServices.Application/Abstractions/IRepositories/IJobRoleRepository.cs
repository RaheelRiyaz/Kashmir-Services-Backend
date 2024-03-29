﻿using KashmirServices.Application.RRModels;
using KashmirServices.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KashmirServices.Application.Abstractions.IRepositories
{
    public interface IJobRoleRepository : IBaseRepository<JobRole>
    {
     
        Task<IEnumerable<JobRolesResponse>> GetMyJobRolesAsync(Guid id);

        Task<IEnumerable<EngineersJobRoleResponse>> GetMyEngineersByCategoryIdAsync(Guid id,Guid managerId);


        Task<IEnumerable<EngineersJobRoleResponse>> GetAllEngineersByCategoryId(Guid categoryId);

        Task<IEnumerable<EngineersJobRoleResponse>> GetAllEngineersByManagerId(Guid managerId);


    }

}
