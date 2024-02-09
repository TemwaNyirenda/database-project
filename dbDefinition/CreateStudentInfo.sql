CREATE TABLE [dbo].[StudentInfo]
(
  StudentID [int] IDENTITY(1,1),
  HODID [int],
  IDNumber [varchar](13) NOT NULL,
  Race [varchar] NOT NULL,
  StudentFirstName [varchar](100) NOT NULL,
  StudentLastName [varchar](100) NOT NULL,
  FinalYear [binary](1) NOT NULL,
  Motivation [varchar](1000) NOT NULL,
  Transcript [varchar](1000) NOT NULL,
  StudentStatus [int] NOT NULL,
  CONSTRAINT PK_StudentID PRIMARY KEY CLUSTERED ([StudentID]),
  -- CONSTRAINT FK_HOD_StudentInfo FOREIGN KEY ([HODID]) REFERENCES [dbo].[HOD]
  -- CONSTRAINT FK_ApprovalStatusIndex_StudentInfo FOREIGN KEY ([StudentStatus]) REFERENCES [dbo].[HOD]
);

GO