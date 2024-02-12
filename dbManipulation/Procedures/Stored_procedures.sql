CREATE PROCEDURE [GetStudentsByRace]
    @RaceID INT
AS
BEGIN
    SELECT [StudentID], [FirstName], [LastName], [RaceID], [DateOfBirth]
    FROM [Student]
    WHERE [RaceID] = @RaceID;
END;
GO
 
-- Stored procedure to get courses by institute ID
CREATE PROCEDURE [GetCoursesByInstituteID]
    @InstituteID INT
AS
BEGIN
    SELECT [CourseID], [CourseName], [InstituteID], [StartDate], [EndDate]
    FROM [Courses]
    WHERE [InstituteID] = @InstituteID;
END;
GO
