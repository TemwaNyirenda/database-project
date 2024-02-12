CREATE VIEW AcceptedStudents
AS
  SELECT S.[StudentID], U.[FirstName], U.[LastName], B.[BursaryApplicantStatus]
  FROM (
    [Student] AS S
    INNER JOIN [User_Details] AS U
    ON S.[UserID] = U.[UserID]
    )
    INNER JOIN (
    [Bursary_Applicants] AS B
    INNER JOIN [Application_Status] AS A
    ON B.[BursaryApplicantStatus] = A.[Index]
    )
    ON B.[StudentID] = A.[Index]
  WHERE A.[Status] = ('accepted');
