
-- The trigger 'trg_AuditLog_Inventories' has been defined for the 'Inventories' table.
-- Its purpose is to record significant operations (insertion, update, and deletion) performed on this table.
-- Change records are saved in the AuditLog table.
-- by registering the table name, operation type, and detailed operation information.
-- and the username (obtained using the SUSER_NAME() function) who made the change.
CREATE OR ALTER TRIGGER trg_AuditLog_Inventories
ON dbo.Inventories
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @operationType VARCHAR(50)
    DECLARE @details NVARCHAR(50) = ''
    DECLARE @recordID INT

    SET @operationType = CASE 
                            WHEN EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted) THEN 'UPDATE'
                            WHEN EXISTS(SELECT * FROM inserted) THEN 'INSERT'
                            WHEN EXISTS(SELECT * FROM deleted) THEN 'DELETE'
                         END;
    
    -- Collecting information about the type of operation on a specific record
    -- for UPDATE
    IF @operationType = 'UPDATE'
    BEGIN
        SELECT @recordID = i.InventoryID
        FROM inserted i
        SET @details = 'Updated record with InventoryID = ' + CAST(@recordID AS NVARCHAR(50))
    END;

    -- for INSERT
    ELSE IF @operationType = 'INSERT'
    BEGIN
        SELECT @recordID = i.InventoryID
        FROM inserted i
        SET @details = 'Inserted new record with InventoryID = ' + CAST(@recordID AS NVARCHAR(50))
    END;

    -- for DELETE
    ELSE IF @operationType = 'DELETE'
    BEGIN
        SELECT @recordID = d.InventoryID
        FROM deleted d
        SET @details = 'Deleted record with InventoryID = ' + CAST(@recordID AS NVARCHAR(50))
    END;

    INSERT INTO dbo.AuditLog (TableName, OperationType, OperationDetails, UserName)
    VALUES ('Inventories', @operationType, @details, SUSER_NAME())
END;
