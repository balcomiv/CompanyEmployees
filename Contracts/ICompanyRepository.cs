using System.Collections.Generic;
using Entities.Models;

public interface ICompanyRepository
{
    IEnumerable<Company> GetAllCompanies(bool trackChanges);
}