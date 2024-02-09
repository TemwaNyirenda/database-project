CREATE TABLE [dbo].[StudentInfo]
(
  StudentID [int] IDENTITY(1,1),
  HODID [int],
  IDNumber [varchar](13),
  Race [varchar],
  StudentFirstName [varchar](100),
  StudentLastName [varchar](100),
  FinalYear [binary](1),
  Motivation [varchar](1000),
  Transcript [varchar](1000),
  StudentStatus [int],
);