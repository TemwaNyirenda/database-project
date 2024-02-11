CREATE TABLE [dbo].[Bursary_Applicant_Grades] (
    [BursaryApplicantID] INT IDENTITY(1,1) NOT NULL,
    [CourseID] INT NOT NULL,
    [Grade] DECIMAL NOT NULL,
    [BursaryFundID] INT NOT NULL,
    
    CONSTRAINT FK_BursaryApplicantGrades_BursaryApplicantID
        FOREIGN KEY ([BursaryApplicantID])
        REFERENCES [dbo].[Bursary_Applicants]([BursaryApplicantID]),
    CONSTRAINT FK_BursaryApplicantGrades_CourseID
        FOREIGN KEY ([CourseID])
        REFERENCES [Courses]([CourseID]),
    CONSTRAINT FK_BursaryApplicantGrades_BursaryFundID
        FOREIGN KEY ([BursaryFundID])
        REFERENCES [Bursary_Fund]([BursaryFundID])
);