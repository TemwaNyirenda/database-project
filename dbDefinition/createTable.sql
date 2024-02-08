CREATE TABLE [dbo].[BBDTotalAllocation]
(
  YearId [int] UNIQUE,
  Amount [money]
);

CREATE TABLE [dbo].[ApprovalStatusIndex]
(
  StatusID [int] IDENTITY(1,1),
  Status [varchar](8)
);