CREATE TABLE [dbo].[Head_Of_Department] (
    [HeadOfDepartmentID] INT IDENTITY(1,1) NOT NULL,
    [InstituteID] INT NOT NULL,
    [UserID] INT NOT NULL,
    [ContactDetailsID] INT NOT NULL,
    CONSTRAINT PK_HeadOfDepartmentID 
        PRIMARY KEY CLUSTERED ([HeadOfDepartmentID]),
    CONSTRAINT FK_HeadOfDepartment_InstituteID 
        FOREIGN KEY ([InstituteID])
        REFERENCES [dbo].[Institute_Info]([InstituteID]),
    CONSTRAINT FK_HeadOfDepartment_UserID
        FOREIGN KEY ([UserID])
        REFERENCES [dbo].[User_Details]([UserID])
);
GO