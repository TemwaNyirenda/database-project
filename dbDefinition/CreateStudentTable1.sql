CREATE TABLE [Student]
(
  [StudentID] INT IDENTITY(1,1),
  [UserID] INT,
  [ID_Number] INT(13) NOT NULL,
  [RaceID] INT,
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