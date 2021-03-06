﻿IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
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

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200126191624_InitialData')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'CompanyId', N'Address', N'Country', N'Name') AND [object_id] = OBJECT_ID(N'[Companies]'))
        SET IDENTITY_INSERT [Companies] ON;
    INSERT INTO [Companies] ([CompanyId], [Address], [Country], [Name])
    VALUES ('c9d4c053-49b6-410c-bc78-2d54a9991870', N'583 Wall Dr. Gwynn Oak, MD 21207', N'USA', N'IT_Solutions Ltd');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'CompanyId', N'Address', N'Country', N'Name') AND [object_id] = OBJECT_ID(N'[Companies]'))
        SET IDENTITY_INSERT [Companies] OFF;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200126191624_InitialData')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'CompanyId', N'Address', N'Country', N'Name') AND [object_id] = OBJECT_ID(N'[Companies]'))
        SET IDENTITY_INSERT [Companies] ON;
    INSERT INTO [Companies] ([CompanyId], [Address], [Country], [Name])
    VALUES ('3d490a70-94ce-4d15-9494-5248280c2ce3', N'312 Forest Avenue, BF 923', N'USA', N'Admin_Solutions Ltd');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'CompanyId', N'Address', N'Country', N'Name') AND [object_id] = OBJECT_ID(N'[Companies]'))
        SET IDENTITY_INSERT [Companies] OFF;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200126191624_InitialData')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'EmployeeId', N'Age', N'CompanyId', N'Name', N'Position') AND [object_id] = OBJECT_ID(N'[Employees]'))
        SET IDENTITY_INSERT [Employees] ON;
    INSERT INTO [Employees] ([EmployeeId], [Age], [CompanyId], [Name], [Position])
    VALUES ('80abbca8-664d-4b20-b5de-024705497d4a', 26, 'c9d4c053-49b6-410c-bc78-2d54a9991870', N'Sam Raiden', N'Software developer');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'EmployeeId', N'Age', N'CompanyId', N'Name', N'Position') AND [object_id] = OBJECT_ID(N'[Employees]'))
        SET IDENTITY_INSERT [Employees] OFF;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200126191624_InitialData')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'EmployeeId', N'Age', N'CompanyId', N'Name', N'Position') AND [object_id] = OBJECT_ID(N'[Employees]'))
        SET IDENTITY_INSERT [Employees] ON;
    INSERT INTO [Employees] ([EmployeeId], [Age], [CompanyId], [Name], [Position])
    VALUES ('86dba8c0-d178-41e7-938c-ed49778fb52a', 30, 'c9d4c053-49b6-410c-bc78-2d54a9991870', N'Jana McLeaf', N'Software developer');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'EmployeeId', N'Age', N'CompanyId', N'Name', N'Position') AND [object_id] = OBJECT_ID(N'[Employees]'))
        SET IDENTITY_INSERT [Employees] OFF;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200126191624_InitialData')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'EmployeeId', N'Age', N'CompanyId', N'Name', N'Position') AND [object_id] = OBJECT_ID(N'[Employees]'))
        SET IDENTITY_INSERT [Employees] ON;
    INSERT INTO [Employees] ([EmployeeId], [Age], [CompanyId], [Name], [Position])
    VALUES ('021ca3c1-0deb-4afd-ae94-2159a8479811', 35, '3d490a70-94ce-4d15-9494-5248280c2ce3', N'Kane Miller', N'Administrator');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'EmployeeId', N'Age', N'CompanyId', N'Name', N'Position') AND [object_id] = OBJECT_ID(N'[Employees]'))
        SET IDENTITY_INSERT [Employees] OFF;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200126191624_InitialData')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200126191624_InitialData', N'3.1.1');
END;

GO

