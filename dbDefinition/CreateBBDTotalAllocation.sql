CREATE TABLE [dbo].[BBDTotalAllocation]
(
  YearId [int] UNIQUE,
  Amount [money],
  CONSTRAINT PK_YearId PRIMARY KEY CLUSTERED ([YearId]),
);

GO