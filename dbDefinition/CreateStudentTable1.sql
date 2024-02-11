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
ADD CONSTRAINT [FK_Race_Student] FOREIGN KEY ([RaceID]) REFERENCES [dbo].[Race]([RaceID])

GO

ALTER TABLE [Student]
ADD CONSTRAINT [FK_User_Details_Student] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User_Details]([UserID])

GO