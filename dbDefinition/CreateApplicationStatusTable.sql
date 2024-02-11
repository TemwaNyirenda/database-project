CREATE TABLE [Application_Status]
(
  [Index] INT IDENTITY(1,1) NOT NULL,
  [Status] VARCHAR(8) NOT NULL,
);

GO

ALTER TABLE [Application_Status]
ADD CONSTRAINT [PK_ApplicationStatus] PRIMARY KEY CLUSTERED ([Index])

GO
