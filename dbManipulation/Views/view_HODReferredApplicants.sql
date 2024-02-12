USE BBD_BursaryDB;

GO

CREATE VIEW vHODReferredApplicants
AS
    SELECT
        [Institute_Info].[InstituteName],
        [HOD_Name].[FirstName],
        [HOD_Name].[LastName],
        [Bursary_Applicants].[StudentID],
        [Bursary_Applicants].[FirstName],
        [Bursary_Applicants].[LastName]
    FROM (
        [dbo].[Institute_Info]
        INNER JOIN (
            SELECT
                [Head_Of_Department].[InstituteID],
                [User].[FirstName],
                [User].[LastName]
            FROM
                [dbo].[Head_Of_Department]
                INNER JOIN
                    [dbo].[User_Details]
                ON
                    [Head_Of_Department].[UserID] = [User_Details].[UserID]
            ) HOD_Name
        ON
        [HOD_Name].[InstituteID] = [Institute_Info].[InstituteID]
    ), (
        [dbo].[Head_Of_Department]
        INNER JOIN (
            SELECT
                [Bursary_Applicants].[StudentID],
                [User_Details].[FirstName],
                [User_Details].[LastName]
            FROM
                [dbo].[Bursary_Applicants]
                INNER JOIN
                    [dbo].[User_Details]
                ON
                    [Bursary_Applicants].[UserID] = [User].[UserID]
        ) Applicant_Info
        ON [Head_Of_Department].  
    )
