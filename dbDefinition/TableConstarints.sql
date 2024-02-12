USE newDB;

GO 

ALTER TABLE [dbo].[Race]
ADD CONSTRAINT [PK_RaceID] PRIMARY KEY CLUSTERED ([RaceID])
 
GO

ALTER TABLE [dbo].[Contact_Details]
ADD CONSTRAINT [PK_ContactDetailsID] 
PRIMARY KEY CLUSTERED ([ContactDetailsID])
 
GO

ALTER TABLE [dbo].[Accreditation]
ADD CONSTRAINT [PK_AccreditationID] PRIMARY KEY CLUSTERED ([AccreditationID])
 
GO

ALTER TABLE [dbo].[Bursary_Fund]
ADD CONSTRAINT [PK_BursaryFund] 
PRIMARY KEY CLUSTERED ([BursaryFundID])
 
GO

ALTER TABLE [dbo].[Application_Status]
ADD CONSTRAINT [PK_ApplicationStatus] PRIMARY KEY CLUSTERED ([Index])

GO

ALTER TABLE [dbo].[User_Details]
ADD CONSTRAINT [PK_UserID] PRIMARY KEY CLUSTERED ([UserID])

GO

ALTER TABLE [dbo].[User_Details]
ADD CONSTRAINT [FK_UserDetails_ContanctDetailsID] FOREIGN KEY ([ContactDetailsID])
REFERENCES [Contact_Details]([ContactDetailsID])

GO
 
ALTER TABLE [dbo].[Institute_Info]
ADD CONSTRAINT [FK_Institute_Info.BBDBursaryInstituteStatus]
FOREIGN KEY ([BBDBursaryInstituteStatus])
REFERENCES [dbo].[Application_Status]([Index])
 
GO
 
ALTER TABLE [dbo].[Institute_Info]
ADD CONSTRAINT [FK_Institute_Info.ContactDetailsID]
FOREIGN KEY ([ContactDetailsID])
REFERENCES [dbo].[Contact_Details]([ContactDetailsID])


GO
 
ALTER TABLE [dbo].[Institute_Info]
ADD CONSTRAINT [PK_InstituteID] PRIMARY KEY CLUSTERED([InstituteID])

GO
 
ALTER TABLE [Student]
ADD CONSTRAINT [PK_StudentID] PRIMARY KEY CLUSTERED ([StudentID])
 
GO
 
ALTER TABLE [Student]
ADD CONSTRAINT [FK_Student_Race] FOREIGN KEY ([RaceID]) REFERENCES [dbo].[Race]([RaceID])
 
GO
 
ALTER TABLE [Student]
ADD CONSTRAINT [FK_Student_UserDetails] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User_Details]([UserID])
 
GO
 
ALTER TABLE [dbo].[Head_Of_Department]
ADD CONSTRAINT [PK_HeadOfDepartmentID] 
PRIMARY KEY CLUSTERED ([HeadOfDepartmentID])
 
GO
 
ALTER TABLE [dbo].[Head_Of_Department]
ADD CONSTRAINT [FK_HeadOfDepartment_InstituteID] 
FOREIGN KEY ([InstituteID])
REFERENCES [dbo].[Institute_Info]([InstituteID])
 
GO
ALTER TABLE [dbo].[Head_Of_Department]
ADD CONSTRAINT [FK_HeadOfDepartment_UserID]
FOREIGN KEY ([UserID])
REFERENCES [dbo].[User_Details]([UserID])
 
GO

ALTER TABLE [dbo].[Institution_Fund_Allocation]
ADD CONSTRAINT [FK_Institution_Fund_Allocation.InstituteID]
FOREIGN KEY ([InstituteID])
REFERENCES [dbo].[Institute_Info]([InstituteID])
 
GO
 
ALTER TABLE [dbo].[Institution_Fund_Allocation]
ADD CONSTRAINT [FK_Institution_Fund_Allocation.BursaryFundID]
FOREIGN KEY ([BursaryFundID])
REFERENCES [dbo].[Bursary_Fund]([BursaryFundID])
 
GO

ALTER TABLE [dbo].[Institute_Accreditation]
ADD CONSTRAINT [FK_InstituteAccreditation_Accreditation] 
FOREIGN KEY ([AccreditationID]) 
REFERENCES [dbo].[Accreditation]([AccreditationID])
 
GO
 
ALTER TABLE [dbo].[Institute_Accreditation]
ADD CONSTRAINT [FK_InstituteAccreditation_InstituteInfo] 
FOREIGN KEY ([InstituteID]) 
REFERENCES [dbo].[Institute_Info]([InstituteID])
 
 
GO

ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [FK_Courses.InstituteID] 
FOREIGN KEY ([InstituteID]) 
REFERENCES [Institute_Info] ([InstituteID])
 
GO
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [PK_CourseID] PRIMARY KEY CLUSTERED([CourseID])
 
GO
 
ALTER TABLE [dbo].[Bursary_Applicants]
ADD CONSTRAINT [PK_BursaryApplicants] PRIMARY KEY CLUSTERED ([BursaryApplicantID])
GO
 
ALTER TABLE [dbo].[Bursary_Applicants]
ADD CONSTRAINT [FK_BursaryApplicants_HeadOfDepartment]
FOREIGN KEY ([HeadOfDepartmentID])
REFERENCES [dbo].[Head_Of_Department] ([HeadOfDepartmentID])
 
GO
 
ALTER TABLE [dbo].[Bursary_Applicants]
ADD CONSTRAINT [FK_BursaryApplicants_BursaryApplicantStatus]
FOREIGN KEY ([BursaryApplicantStatus])
REFERENCES [dbo].[Application_Status] ([Index])
 
GO
 
ALTER TABLE [dbo].[Bursary_Applicants]
ADD CONSTRAINT [FK_BursaryApplicants_StudentID]
FOREIGN KEY ([StudentID])
REFERENCES[dbo]. [Student] ([StudentID])
 
 
 GO

 ALTER TABLE [dbo].[Bursary_Applicant_Grades]
ADD CONSTRAINT [FK_BursaryApplicantGrades_BursaryApplicantID]
FOREIGN KEY ([BursaryApplicantID])
REFERENCES [dbo].[Bursary_Applicants]([BursaryApplicantID])
 
GO
 
ALTER TABLE [dbo].[Bursary_Applicant_Grades]
ADD CONSTRAINT [FK_BursaryApplicantGrades_CourseID]
FOREIGN KEY ([CourseID])
REFERENCES [dbo].[Courses]([CourseID])
 
GO
 
ALTER TABLE [dbo].[Bursary_Applicant_Grades]
ADD CONSTRAINT [FK_BursaryApplicantGrades_BursaryFundID]
FOREIGN KEY ([BursaryFundID])
REFERENCES[dbo]. [Bursary_Fund]([BursaryFundID])
 
GO
