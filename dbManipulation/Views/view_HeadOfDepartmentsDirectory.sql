USE BBD_BursaryDB;

GO

CREATE VIEW vHeadOfDepartmentsDirectory AS
SELECT 
    [Institute_Info].[InstituteName],
    [Person_Details].[FirstName], 
    [Person_Details].[LastName],
    [Person_Details].[PhoneNumber],
    [Person_Details].[Email]
FROM (
    [dbo].[Institute_Info]
    INNER JOIN
        [dbo].[Head_Of_Department]
    ON
        [Head_Of_Department].[InstituteID] = [Institute_Info].[InstituteID]
), (
    SELECT
        [User].[FirstName],
        [User].[LastName],
        [Contact_Details].[PhoneNumber],
        [Contact_Details].[Email]
    FROM
        [dbo].[User_Details]
        INNER JOIN
        [dbo].[Contact_Details]
        ON
            [User_Details].[ContactDetailsID] = [Contact_Details].[ContactDetailsID]
) Person_Details