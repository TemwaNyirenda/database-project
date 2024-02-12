CREATE TABLE [dbo].[Accreditation]
(
    [AccreditationID] INT IDENTITY(1,1) NOT NULL,
    [Name] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_AccreditationID] PRIMARY KEY CLUSTERED ([AccreditationID]),
);
GO
