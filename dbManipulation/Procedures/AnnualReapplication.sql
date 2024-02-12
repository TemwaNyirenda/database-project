CREATE PROCEDURE dbo.AnnualReapplication
AS
BEGIN
    SET NOCOUNT ON;

    -- Reset the allocation status for each university
    UPDATE dbo.Institution_Fund_Allocation
    SET AllocatedAmount =  0;

    -- Update the application status for each university to indicate they need to reapply
    UPDATE dbo.Institute_Info
    SET BBDBursaryInstituteStatus = (SELECT [Index] FROM [dbo].[Application_Status] WHERE Status = 'Pending');
END
GO
