-- Script used to generate the InstituteContacts

CREATE TABLE [dbo].[InstituteContacts] (
	[InstituteContactID] [int] IDENTITY(1,1),
	[FirstName] [varchar](1000),
	[LastName] [varchar](1000),
	[InstituteID] [int],
	[ContactDetailsID] [int] 
	CONSTRAINT PK_InstituteContactID PRIMARY KEY CLUSTERED ([InstituteContactID]),
	--CONSTRAINT FK_InstituteID_InstituteContacts FOREIGN KEY ([InstituteID]) REFERENCES [dbo].[Intitute]
	--CONSTRAINT FK_ContactDetailsID_InstituteContacts FOREIGN KEY ([ContactDetailsID]) REFERENCES [dbo].[ContactDetails]
);
GO