-- View Applicants with grades
CREATE VIEW [View_BursaryApplicantsWithGrades]
AS
SELECT ba.[BursaryApplicantID], ba.[BursaryAmount], ba.[InFinalYear], ba.[Motivation], g.[Grade]
FROM [Bursary_Applicants] ba
JOIN [Bursary_Applicants_Grades] g ON ba.[BursaryApplicantID] = g.[BursaryApplicantID];
GO


-- View to retrieve institute information along with the status
CREATE VIEW [View_InstituteInfoWithStatus]
AS
SELECT 
    ii.[InstituteID],
    ii.[InstituteName],
    cd.[PhoneNumber],
    cd.[Email],
    as.[Status] AS [BursaryInstituteStatus]
FROM 
    [Institute_Info] ii
JOIN 
    [Contact_Details] cd ON ii.[ContactDetailsID] = cd.[ContactDetailsID]
JOIN 
    [Application_Status] as ON ii.[BBDBursaryInstituteStatus] = as.[Index];
GO


--View the Institution with their allocation details
CREATE VIEW [View_AllocationDetails]
AS
SELECT 
    ifa.[InstituteID],
    ii.[InstituteName],
    ifa.[AllocatedAmount],
    bf.[FundAmount]
FROM 
    [Institution_Fund_Allocation] ifa
JOIN 
    [Institute_Info] ii ON ifa.[InstituteID] = ii.[InstituteID]
JOIN 
    [Bursary_Fund] bf ON ifa.[BursaryFundID] = bf.[BursaryFundID];
GO
