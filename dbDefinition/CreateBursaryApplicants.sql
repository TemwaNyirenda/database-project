CREATE TABLE [dbo].[Bursary_Applicants]
(
  [BursaryApplicantID] INT IDENTITY(1,1) NOT NULL,
  [StudentID] INT NOT NULL,
  [HeadOfDepartmentID] INT NOT NULL,
  [BursaryAmount] money NOT NULL,
  [InFinalYear] BINARY(1) NOT NULL,
  [Motivation] VARCHAR (500) NOT NULL,
  [BursaryApplicantStatus] INT NOT NULL,
  CONSTRAINT [PK_BursaryApplicants] PRIMARY KEY CLUSTERED ([BursaryApplicantID]),
  CONSTRAINT [FK_BursaryApplicants_HeadOfDepartment]
  FOREIGN KEY ([HeadOfDepartmentID])
  REFERENCES [Head_Of_Department] ([HeadOfDepartmentID]),
  CONSTRAINT [FK_BursaryApplicants_BursaryApplicantStatus]
  FOREIGN KEY ([BursaryApplicantStatus])
  REFERENCES [Application_Status] ([Index]),
  CONSTRAINT [FK_BursaryApplicants_StudentID]
  FOREIGN KEY ([StudentID])
  REFERENCES [Student] ([StudentID]),
);
GO
