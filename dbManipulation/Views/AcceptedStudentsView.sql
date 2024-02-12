CREATE VIEW AcceptedStudents
AS
  SELECT S.[StudentID], U.[FirstName], U.[LastName], B.[BursaryApplicationStatus]
  FROM (
    [Students] AS S
    INNER JOIN [User_Details] AS U
    ON S.[UserID] = U.[UserID]
    )
    INNER JOIN (
    [Bursary_Applicants] AS B
    INNER JOIN [Application_Status] AS A
    ON B.[Bursary_ApplicantsStatus] = A.[Index]
    )
    ON [StudentID] = [StudentID]
  WHERE B.[BursaryApplicationStatus] = ('accepted');
