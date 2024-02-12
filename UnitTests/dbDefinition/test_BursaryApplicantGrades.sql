IF(OBJECT_ID('dbo.Bursary_Applicant_Grades', 'BAG') IS NOT NULL)
BEGIN
    PRINT 'Test: Bursary_Applicant_Grades Table does exist.'
END
ELSE
BEGIN
    PRINT 'Test: Bursary_Applicant_Grades Table does not exist'
END

GO
