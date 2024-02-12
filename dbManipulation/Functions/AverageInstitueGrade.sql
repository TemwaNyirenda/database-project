USE BBD_BursaryDB;

GO

CREATE FUNCTION dbo.udfAverageInstituteGrade (@InstituteName int)
RETURNS @Result TABLE
(
  InstituteID int,
  InstituteName varchar(50),
  BursaryFundID int,
  Grade varchar(10)
)
AS
BEGIN
  INSERT INTO @Result
  SELECT S.[StudentID], U.[FirstName], U.[LastName], B.[BursaryApplicationStudentID]
  FROM (
    [Students] AS S
    INNER JOIN [User_Details] AS U
    ON S.[UserID] = U.[UserID]
    )
    INNER JOIN (
    [Bursary_Applicants] AS B
    INNER JOIN [Application_StudentID] AS A
    ON B.[Bursary_ApplicantsStudentID] = A.[Index]
    )
    ON [StudentID] = [StudentID]
  WHERE B.[BursaryApplicationStudentID] = @InstituteName;

  RETURN;
END;
