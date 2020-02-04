using System;
using System.Collections.Generic;
using Entities.Models;

public interface IEmployeeRepository
{
    IEnumerable<Employee> GetEmployees(Guid companyId, bool trackChanges);

    Employee GetEmployee(Guid compayId, Guid id, bool trackChanges);

}