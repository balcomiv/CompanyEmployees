IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200124095818_InitialCreate')
BEGIN
    CREATE TABLE [Companies] (
        [CompanyId] uniqueidentifier NOT NULL,
        [Name] nvarchar(60) NOT NULL,
        [Address] nvarchar(60) NOT NULL,
        [Country] nvarchar(max) NULL,
        CONSTRAINT [PK_Companies] PRIMARY KEY ([CompanyId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200124095818_InitialCreate')
BEGIN
    CREATE TABLE [Employees] (
        [EmployeeId] uniqueidentifier NOT NULL,
        [Name] nvarchar(30) NOT NULL,
        [Age] int NOT NULL,
        [Position] nvarchar(20) NOT NULL,
        [CompanyId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_Employees] PRIMARY KEY ([EmployeeId]),
        CONSTRAINT [FK_Employees_Companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [Companies] ([CompanyId]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200124095818_InitialCreate')
BEGIN
    CREATE INDEX [IX_Employees_CompanyId] ON [Employees] ([CompanyId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200124095818_InitialCreate')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200124095818_InitialCreate', N'3.1.1');
END;

GO

