CREATE TABLE [dbo].[BBDTotalAllocation]
(
  YearId [int] NOT NULL,
  Amount [money] NOT NULL,
  CONSTRAINT PK_YearId PRIMARY KEY CLUSTERED ([YearId]),
);

GO