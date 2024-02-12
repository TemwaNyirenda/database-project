CREATE DATABASE newDB

GO

USE newDB;

GO

CREATE TABLE [dbo].[Accreditation]
(
  [AccreditationID] INT IDENTITY(1,1) NOT NULL,
  [Name] VARCHAR(100) NOT NULL,
);
GO

CREATE TABLE [dbo].[Application_Status]
(
  [Index] INT IDENTITY(1,1) NOT NULL,
  [Status] VARCHAR(8) NOT NULL,
);

CREATE TABLE [dbo].[Bursary_Applicants]
(
  [BursaryApplicantID] INT IDENTITY(1,1) NOT NULL,
  [StudentID] INT NOT NULL,
  [HeadOfDepartmentID] INT NOT NULL,
  [BursaryAmount] money NOT NULL,
  [InFinalYear] BINARY(1) NOT NULL,
  [Motivation] VARCHAR (500) NOT NULL,
  [BursaryApplicantStatus] INT NOT NULL,
);

CREATE TABLE [dbo].[Bursary_Applicant_Grades]
(
  [BursaryApplicantID] INT IDENTITY(1,1) NOT NULL,
  [CourseID] INT NOT NULL,
  [Grade] DECIMAL NOT NULL,
  [BursaryFundID] INT NOT NULL,
);

CREATE TABLE [dbo].[Bursary_Fund]
(
  [BursaryFundID] INT IDENTITY(2024,1) NOT NULL,
  [FundAmount] MONEY NOT NULL,
);

CREATE TABLE [dbo].[Contact_Details]
(
  [ContactDetailsID] INT IDENTITY(1,1) NOT NULL,
  [PhoneNumber] CHAR(10) NOT NULL,
  [Email] VARCHAR(320) NOT NULL,
);

CREATE TABLE [dbo].[Courses]
(
  CourseID [int] IDENTITY(1,1) NOT NULL,
  CourseName [VARCHAR](100) NOT NULL,
  InstituteID [int] NOT NULL,
);


CREATE TABLE [dbo].[Head_Of_Department]
(
  [HeadOfDepartmentID] INT IDENTITY(1,1) NOT NULL,
  [InstituteID] INT NOT NULL,
  [UserID] INT NOT NULL,
  [ContactDetailsID] INT NOT NULL,
);

CREATE TABLE [dbo].[Institute_Accreditation]
(
  [AccreditationID] INT NOT NULL,
  [InstituteID] INT NOT NULL,
);

CREATE TABLE [dbo].[Institution_Fund_Allocation]
(
  [InstituteID] INT NOT NULL,
  [AllocatedAmount] MONEY NOT NULL,
  [BursaryFundID] INT NOT NULL,
);

CREATE TABLE [dbo].[Institute_Info]
(
  [InstituteID] INT NOT NULL IDENTITY(1,1),
  [InstituteName] VARCHAR(100) NOT NULL,
  [ContactDetailsID] INT NOT NULL,
  [BBDBursaryInstituteStatus] INT NOT NULL,
);

CREATE TABLE [dbo].[Race]
(
  [RaceID][int] IDENTITY(1,1) NOT NULL,
  [Race][varchar](8) NOT NULL,

);


CREATE TABLE [Student]
(
  [StudentID] INT IDENTITY(1,1) NOT NULL,
  [UserID] INT NOT NULL,
  [ID_Number] CHAR(13) NOT NULL,
  [RaceID] INT NOT NULL,
);


CREATE TABLE [dbo].[User_Details]
(
  [UserID][INT] IDENTITY(1,1) NOT NULL,
  [FirstName] VARCHAR(100) NOT NULL,
  [LastName] VARCHAR(100) NOT NULL,
  [ContactDetailsID] INT NOT NULL,
);
GO
 
 
