
-- Test table creation
IF OBJECT_ID('dbo.Institution_Fund_Allocation', 'U') IS NOT NULL
BEGIN
    PRINT 'Table dbo.Institution_Fund_Allocation exists.'
END
ELSE
BEGIN
    PRINT 'Table dbo.Institution_Fund_Allocation does not exist.'
    RAISEERROR('Table dbo.Institution_Fund_Allocation does not exist.', 16, 1)
END

-- Test foreign key constraint on InstituteID
IF EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE TABLE_NAME = 'Institution_Fund_Allocation'
    AND CONSTRAINT_NAME = 'FK_Institution_Fund_Allocation.InstituteID'
)
BEGIN
    PRINT 'Foreign key constraint on InstituteID exists.'
END
ELSE
BEGIN
    PRINT 'Foreign key constraint on InstituteID does not exist.'
  
    RAISEERROR('Foreign key constraint on InstituteID does not exist.', 16, 1)
END

-- Test foreign key constraint on BursaryFundID
IF EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE TABLE_NAME = 'Institution_Fund_Allocation'
    AND CONSTRAINT_NAME = 'FK_Institution_Fund_Allocation.BursaryFundID'
)
BEGIN
    PRINT 'Foreign key constraint on BursaryFundID exists.'
END
ELSE
BEGIN
    PRINT 'Foreign key constraint on BursaryFundID does not exist.'
   
    RAISEERROR('Foreign key constraint on BursaryFundID does not exist.', 16, 1)
END

-- Test data types
IF EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = 'Institution_Fund_Allocation'
    AND COLUMN_NAME = 'AllocatedAmount'
    AND DATA_TYPE = 'money'
)
BEGIN
    PRINT 'Data type of AllocatedAmount column is money.'
END
ELSE
BEGIN
    PRINT 'Data type of AllocatedAmount column is not money.'
    RAISEERROR('Data type of AllocatedAmount column is not money.', 16, 1)
END

-- Test primary key
IF EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE TABLE_NAME = 'Institution_Fund_Allocation'
    AND CONSTRAINT_NAME = 'PK__Institut__EDEC0643D0FAFD27'
)
BEGIN
    PRINT 'Primary key constraint on YearID exists.'
END
ELSE
BEGIN
    PRINT 'Primary key constraint on YearID does not exist.'
    RAISEERROR('Primary key constraint on YearID does not exist.', 16, 1)
END
