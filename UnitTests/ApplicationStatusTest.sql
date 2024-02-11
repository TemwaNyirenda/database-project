IF(OBJECT_ID('dbo.Application_Status', 'AppStatus') IS NOT NULL)
BEGIN
  PRINT 'Test: Application_Status Table does exist.'
END
ELSE
BEGIN
  PRINT 'Test: Application_Status Table does not exist'
END

GO

IF(OBJECT_ID('Application_Status', 'AppStatus') IS NOT NULL)
  BEGIN
  DECLARE @nullCount INT
  SELECT @nullCount = COUNT(*)
  FROM Application_Status
  WHERE Status is NULL
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