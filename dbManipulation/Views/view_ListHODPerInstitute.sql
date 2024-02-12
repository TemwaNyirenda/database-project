CREATE VIEW vListHODPerInstitute AS
SELECT 
    [Institute_Info].[InstituteName],
    [HOD_Name].[FirstName], 
    [HOD_Name].[LastName]
FROM 
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