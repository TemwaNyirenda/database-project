CREATE TABLE [Student]
(
  [StudentID] INT IDENTITY(1,1) NOT NULL,
  [UserID] INT NOT NULL,
  [ID_Number] CHAR(13) NOT NULL,
  [RaceID] INT NOT NULL,
);

GO

ALTER TABLE [Student]
ADD CONSTRAINT [PK_StudentID] PRIMARY KEY CLUSTERED ([StudentID])

GO

ALTER TABLE [Student]
ADD CONSTRAINT [FK_Student_Race] FOREIGN KEY ([RaceID]) REFERENCES [dbo].[Race]([RaceID])

GO

ALTER TABLE [Student]
ADD CONSTRAINT [FK_Student_UserDetails] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User_Details]([UserID])

GO
