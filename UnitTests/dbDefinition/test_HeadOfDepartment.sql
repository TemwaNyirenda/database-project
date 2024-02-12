IF(OBJECT_ID('dbo.Head_Of_Department', 'BAG') IS NOT NULL)
BEGIN
    PRINT 'Test: Head_Of_Department Table does exist.'
END
ELSE
BEGIN
    PRINT 'Test: Head_Of_Department Table does not exist'
END

GO
