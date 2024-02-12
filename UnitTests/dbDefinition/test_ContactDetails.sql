IF(OBJECT_ID('dbo.Contact_Details', 'BAG') IS NOT NULL)
BEGIN
    PRINT 'Test: Contact_Details Table does exist.'
END
ELSE
BEGIN
    PRINT 'Test: Contact_Details Table does not exist'
END

GO
