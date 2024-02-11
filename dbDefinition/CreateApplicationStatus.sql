CREATE TABLE [Application_Status]
(
  [Index] INT IDENTITY(1,1),
  [Status] VARCHAR NOT NULL,
);

GO

ALTER TABLE [Application_Status]
ADD CONSTRAINT [PK_ApplicationStatus] PRIMARY KEY CLUSTERED ([Index])

GO