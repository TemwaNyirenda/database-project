CREATE TABLE [Institute_Accreditation]
(
  [AccreditationID] INT NOT NULL,
  [InstituteID] INT NOT NULL,
);

GO

ALTER TABLE [Institute_Accreditation]
ADD CONSTRAINT [FK_InstituteAccreditation_Accreditation] 
FOREIGN KEY ([AccreditationID]) 
REFERENCES [Accreditation]([AccreditationID])

GO

ALTER TABLE [Institute_Accreditation]
ADD CONSTRAINT [FK_InstituteAccreditation_InstituteInfo] 
FOREIGN KEY ([InstituteID]) 
REFERENCES [Institute_Info]([InstituteID])

GO
