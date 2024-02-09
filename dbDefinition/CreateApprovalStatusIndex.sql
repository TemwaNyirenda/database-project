CREATE TABLE [dbo].[ApprovalStatusIndex]
(
  StatusID [int] IDENTITY(1,1),
  Status [varchar](8) NOT NULL,
  CONSTRAINT PK_StatusID PRIMARY KEY CLUSTERED ([StatusID]),
);

GO