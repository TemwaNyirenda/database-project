-- Script used to generate the BursaryRecipients table

CREATE TABLE [dbo].[BursaryRecipients] (
	[BursaryRecipientID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[BursaryAllocatedAmount] [money] NOT NULL,
	[BursaryFundID] [int] NOT NULL, -- Needed?? Should it be Allocation ID??
	CONSTRAINT PK_BursaryRecipientID PRIMARY KEY CLUSTERED ([BursaryRecipientID]),
	--CONSTRAINT FK_StudentID_BursaryRecipients FOREIGN KEY ([StudentID]) REFERENCES [dbo].[Student]
	--CONSTRAINT FK_BursaryFundID_BursaryRecipients FOREIGN KEY ([BursaryFundID]) REFERENCES [dbo].[BursaryFund]
);
GO