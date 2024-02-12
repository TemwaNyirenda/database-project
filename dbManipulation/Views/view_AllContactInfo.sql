CREATE VIEW vAllContactInfo
AS
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