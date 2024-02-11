CREATE TABLE [Bursary_Fund]
(
  [BursaryFundID] INT IDENTITY(2024,1) NOT NULL,
  [FundAmount] MONEY NOT NULL,
);

GO

ALTER TABLE [Bursary_Fund]
ADD CONSTRAINT [PK_BursaryFund] 
PRIMARY KEY CLUSTERED ([BursaryFundID])

GO
