-- Script used to generate the ContactDetails table
-- Table will be referenced in InstituteContacts and Students

CREATE TABLE [dbo].[ContactDetails] (
	[ContactDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [char](10) NOT NULL, -- Institute should have phone number && email (in case these fail??)
	[EmailAddress] [varchar](320) NOT NULL, 
	CONSTRAINT PK_ContactDetailsID PRIMARY KEY CLUSTERED ([ContactDetailsID]),
);
GO