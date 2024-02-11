CREATE TABLE [dbo].[Courses](
    CourseID [int] PRIMARY KEY,
    CourseName [VARCHAR](100) NOT NULL,
    InstituteID [int],
    CONSTRAINT FK_Courses.InstituteID FOREIGN KEY (InstituteID) REFERENCES Institute_Info(InstituteID)
);

--unittest
IF OBJECT_ID('dbo.Courses', 'U') IS NOT NULL
BEGIN
    PRINT 'Table dbo.Courses exists.'

    -- Test primary key constraint
    IF EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
        WHERE TABLE_NAME = 'Courses'
        AND CONSTRAINT_TYPE = 'PRIMARY KEY'
    )
    BEGIN
        PRINT 'Primary key constraint on CourseID exists.'
    END
    ELSE
    BEGIN
        PRINT 'Primary key constraint on CourseID does not exist.'
        RAISERROR('Primary key constraint on CourseID does not exist.', 16, 1)
    END

    -- Test foreign key constraint
    IF EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
        WHERE TABLE_NAME = 'Courses'
        AND CONSTRAINT_NAME = 'FK_Courses.InstituteID'
    )
    BEGIN
        PRINT 'Foreign key constraint on InstituteID exists.'
    END
    ELSE
    BEGIN
        PRINT 'Foreign key constraint on InstituteID does not exist.'
        RAISERROR('Foreign key constraint on InstituteID does not exist.', 16, 1)
    END


END
ELSE
BEGIN
    PRINT 'Table dbo.Courses does not exist.'
    RAISERROR('Table dbo.Courses does not exist.', 16, 1)
END
