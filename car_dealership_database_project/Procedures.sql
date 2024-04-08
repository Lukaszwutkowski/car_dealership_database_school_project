
-- The task of the procedure is to update the price of a car in the Inventories table.
-- The procedure first checks whether the car with the given VIN exists in the Inventories table before proceeding to update the price.
-- After changing the price, the procedure records the operation in the AuditLog table (thanks to the previously created trigger, which is located in the 'Triggers' section).
CREATE PROCEDURE dbo.UpdateCarPrice
    @VIN VARCHAR(50),
    @NewPrice MONEY
AS
BEGIN
    -- Checking if the car exists.
    IF EXISTS(SELECT 1 FROM dbo.Inventories WHERE VIN = @VIN)
    BEGIN
        -- Updating the car's price.
        UPDATE dbo.Inventories
        SET Price = @NewPrice
        WHERE VIN = @VIN;
    END
    ELSE
    BEGIN
        -- If the car does not exist, return a message.
        PRINT 'Car doesn´t exist.';
    END
END;
