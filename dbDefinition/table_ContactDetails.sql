CREATE TABLE [dbo].[Contact_Details] (
	[ContactDetailsID] INT IDENTITY(1,1) NOT NULL,
	[PhoneNumber] CHAR(10) NOT NULL,
	[Email] VARCHAR(320) NOT NULL,
	CONSTRAINT PK_ContactDetailsID 
		PRIMARY KEY CLUSTERED ([ContactDetailsID])
);
GO