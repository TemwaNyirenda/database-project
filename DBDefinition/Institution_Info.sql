CREATE TABLE [dbo].[Institute_Info] (
  [InstituteID ] INT PRIMARY KEY ,
  [InstituteName] VARCHAR(100) NOT NULL,
  [ContactDetailsID] INT,
  [BBDBursaryInstituteStatus ] INT,
  CONSTRAINT [FK_Institute_Info.BBDBursaryInstituteStatus ]
    FOREIGN KEY ([BBDBursaryInstituteStatus ])
      REFERENCES [Application_Status]([Index ])
);


IF OBJECT_ID('dbo.Institute_Info', 'U') IS NOT NULL
BEGIN
    PRINT 'Table dbo.Institute_Info exists.'

    -- Test primary key constraint
    IF EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
        WHERE TABLE_NAME = 'Institute_Info'
        AND CONSTRAINT_TYPE = 'PRIMARY KEY'
    )
    BEGIN
        PRINT 'Primary key constraint on InstituteID exists.'
    END
    ELSE
    BEGIN
        PRINT 'Primary key constraint on InstituteID does not exist.'
    
        RAISERROR('Primary key constraint on InstituteID does not exist.', 16, 1)
    END

    -- Test foreign key constraint
    IF EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
        WHERE TABLE_NAME = 'Institute_Info'
        AND CONSTRAINT_NAME = 'FK_Institute_Info.BBDBursaryInstituteStatus'
    )
    BEGIN
        PRINT 'Foreign key constraint on BBDBursaryInstituteStatus exists.'
    END
    ELSE
    BEGIN
        PRINT 'Foreign key constraint on BBDBursaryInstituteStatus does not exist.'

        RAISERROR('Foreign key constraint on BBDBursaryInstituteStatus does not exist.', 16, 1)
    END


END
ELSE
BEGIN
    PRINT 'Table dbo.Institute_Info does not exist.'
  
    RAISERROR('Table dbo.Institute_Info does not exist.', 16, 1)
END


