using System;
using System.Collections.Generic;
using AutoMapper;
using Contracts;
using Entities.DataTransferObjects;
using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("api/companies/{companyId}/employees")]
public class EmployeesController : ControllerBase
{
    private readonly IRepositoryManager _repository;
    private readonly IMapper _mapper;
    public EmployeesController(IRepositoryManager repository, IMapper mapper)
    {
        _repository = repository;
        _mapper = mapper;
    }

    [HttpGet]
    public IActionResult GetEmployeesForCompany(Guid companyId)
    {
        var company = _repository.Company.GetCompany(companyId, trackChanges: false);
        if (company == null)
        {
            return NotFound();
        }

        var employeesFromDb = _repository.Employee.GetEmployees(companyId, trackChanges: false);

        var employeesDto = _mapper.Map<IEnumerable<EmployeeDto>>(employeesFromDb);

        return Ok(employeesDto);
    }

    [HttpGet("{id}")]
    public IActionResult GetEmployeeForCompany(Guid companyId, Guid id)
    {
        var company = _repository.Company.GetCompany(companyId, trackChanges: false);
        if (company == null)
        {
            return NotFound();
        }

        var employeeDb = _repository.Employee.GetEmployee(companyId, id, trackChanges: false);
        if (employeeDb == null)
        {
            return NotFound();
        }

        var employee = _mapper.Map<EmployeeDto>(employeeDb);
        return Ok(employee);
    }
}