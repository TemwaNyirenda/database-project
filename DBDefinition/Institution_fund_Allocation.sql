CREATE TABLE [dbo].[Institution_Fund_Allocation] (
  [InstituteID] INT NOT NULL,
  [AllocatedAmount] MONEY NOT NULL,
  [BursaryFundID] INT NOT NULL,
  CONSTRAINT [FK_Institution_Fund_Allocation.InstituteID]
    FOREIGN KEY ([InstituteID])
      REFERENCES [Institute_Info]([InstituteID]),
  CONSTRAINT [FK_Institution_Fund_Allocation.BursaryFundID]
    FOREIGN KEY ([BursaryFundID])
      REFERENCES [Bursary_Fund]([BursaryFundID])
);
