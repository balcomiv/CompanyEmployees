using System;
using System.Collections.Generic;
using Entities.Models;

public interface ICompanyRepository
{
    IEnumerable<Company> GetAllCompanies(bool trackChanges);
    Company GetCompany(Guid companyId, bool trackChanges);

    void CreateCompany(Company company);
}