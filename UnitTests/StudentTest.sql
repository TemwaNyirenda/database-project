IF(OBJECT_ID('dbo.Students', 'S') IS NOT NULL)
BEGIN
  PRINT 'Test: Students Table does exist.'
END
ELSE
BEGIN
  PRINT 'Test: Students Table does not exist'
END

GO

IF(OBJECT_ID('dbo.Students', 'S') IS NOT NULL)
  BEGIN
  DECLARE @nullCount INT
  SELECT @nullCount = COUNT(*)
  FROM dbo.Students
  WHERE ID_Number is NULL
  IF @nullCount = 0
    BEGIN
    PRINT 'NOT NULL CONSTRAINT ENFORCED'
  END
  ELSE 
    BEGIN
    PRINT 'NOT NULL CONSTRAINT VIOLATED'
  END
END
  ELSE 
    BEGIN
  PRINT 'Tables does not exist'
END

GO