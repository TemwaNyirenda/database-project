CREATE TABLE [dbo].[Institute_Info] (
  [InstituteID] INT NOT NULL IDENTITY(1,1),
  [InstituteName] VARCHAR(100) NOT NULL,
  [ContactDetailsID] INT NOT NULL,
  [BBDBursaryInstituteStatus] INT NOT NULL,
  CONSTRAINT [FK_Institute_Info.BBDBursaryInstituteStatus]
    FOREIGN KEY ([BBDBursaryInstituteStatus])
      REFERENCES [Application_Status]([Index]),
  CONSTRAINT [FK_Institute_Info.ContactDetailsID]
    FOREIGN KEY ([ContactDetailsID])
      REFERENCES [Contact_Details]([ContactDetailsID]),
  CONSTRAINT [PK_InstituteID] PRIMARY KEY CLUSTERED([InstituteID])
);

