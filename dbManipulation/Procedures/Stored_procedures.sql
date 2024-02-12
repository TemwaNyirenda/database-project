--stored procedure to get students by their race
CREATE PROCEDURE [GetStudentsByRace]
    @RaceID INT
AS
BEGIN
    SELECT * FROM [Student] WHERE [RaceID] = @RaceID;
END;
GO

-- Stored procedure to get courses by institute ID
CREATE PROCEDURE [GetCoursesByInstituteID]
    @InstituteID INT
AS
BEGIN
    SELECT * FROM [Courses] WHERE [InstituteID] = @InstituteID;
END;
GO