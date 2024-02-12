CREATE TABLE [dbo].[Race]
(
    [RaceID][int] IDENTITY(1,1) NOT NULL,
    [Race][varchar](8) NOT NULL,
    CONSTRAINT [PK_RaceID] PRIMARY KEY CLUSTERED ([RaceID]),

);
GO
