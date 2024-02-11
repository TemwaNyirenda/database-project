IF(OBJECT_ID('dbo.Bursary_Fund', 'BD') IS NOT NULL)
BEGIN
  PRINT 'Test: Bursary_Fund Table does exist.'
END
ELSE
BEGIN
  PRINT 'Test: Bursary_Fund Table does not exist'
END

GO

IF(OBJECT_ID('dbo.Bursary_Fund', 'BF') IS NOT NULL)
  BEGIN
  DECLARE @nullCount INT
  SELECT @nullCount = COUNT(*)
  FROM dbo.Bursary_Fund
  WHERE FundAmount is NULL
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