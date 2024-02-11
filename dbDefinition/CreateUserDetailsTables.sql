CREATE TABLE [dbo].[User_Details]
(
    [UserID][INT] IDENTITY(1,1) NOT NULL,
    [FirstName] VARCHAR(100) NOT NULL,
    [LastName] VARCHAR(100) NOT NULL,
    [ContactDetailsID] INT NOT NULL,
    CONSTRAINT [PK_UserID] PRIMARY KEY CLUSTERED ([UserID]),
    CONSTRAINT [FK_UserDetails_ContanctDetailsID] FOREIGN KEY ([ContactDetailsID]),
    REFERENCES [Contact_Details].([ContactDetailsID]),
);
GO
