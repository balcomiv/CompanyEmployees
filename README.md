## Entity Framework Issue Resolution

### Had to add .NET SDK 3.1 https://dotnet.microsoft.com/download/dotnet-core/3.1

### Had to install ef as a global tool https://docs.microsoft.com/en-us/ef/core/miscellaneous/cli/dotnet

### Had to install package Microsoft.EntityFrameworkCore.Design

### dotnet-ef migrations add InitialCreate

### MSSQL

https://cloudblogs.microsoft.com/sqlserver/2019/10/17/mssql-extension-for-visual-studio-code-now-has-object-explorer-and-intellicode/

https://docs.microsoft.com/en-us/sql/visual-studio-code/sql-server-develop-use-vscode?view=sql-server-ver15

### Intellicode

https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode

### EF Help

https://docs.microsoft.com/en-us/ef/core/miscellaneous/cli/dotnet

https://www.entityframeworktutorial.net/efcore/entity-framework-core-migration.aspx

https://www.learnentityframeworkcore.com/migrations/seeding

### CLI Help

(this is a good one with test examples)
https://docs.microsoft.com/en-us/archive/msdn-magazine/2017/september/net-standard-demystifying-net-core-and-net-standard

https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-new?tabs=netcore22

https://www.c-sharpcorner.com/article/add-class-library-in-asp-net-core-using-net-core-command-line-interface-cli/

### Code Generation

https://docs.microsoft.com/en-us/aspnet/core/fundamentals/tools/dotnet-aspnet-codegenerator?view=aspnetcore-3.1

### CLI Example Commands

dotnet sln add Contracts/Contracts.csproj
dotnet new classlib -n Contracts -o Contracts
dotnet ef migrations script -i -o ../migration-scripts/initial-data.sql
dotnet add reference ../Repository/Repository.csproj
dotnet add package AutoMapper.Extensions.Microsoft.DependencyInjection
dotnet add package System.Text.Json

### Use this with the PDF to clarify items they missed in the PDF

https://code-maze.com/net-core-web-development-part4/

https://github.com/CodeMazeBlog/.NET-Core-Series/tree/master/Part%205/AccountOwnerServer

### JSON Serialization

https://docs.microsoft.com/en-us/dotnet/standard/serialization/system-text-json-how-to

https://devblogs.microsoft.com/dotnet/try-the-new-system-text-json-apis/

https://codeburst.io/working-with-json-in-net-core-3-2fd1236126c1
