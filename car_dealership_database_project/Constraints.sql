
-- Constraint for the 'Inventories' table - Acquisition Date (AcquisitionDate).
-- The purpose of the constraint is to ensure that the acquisition date is not later than the current system date.
ALTER TABLE dbo.Inventories
ADD CONSTRAINT CHK_Inventories_AcquisitionDate CHECK (AcquisitionDate <= GETDATE());


-- Constraint for the 'Customers' table - email format.
-- The purpose of the constraint is basic validation, which involves checking whether the email address contains the '@' symbol.
ALTER TABLE dbo.Customers
ADD CONSTRAINT CHK_Customers_Email CHECK (Email LIKE '%@%');


-- Constraint for the 'Inventories' table – Status.
-- The purpose of the constraint is to ensure consistency and precision in determining the status of the vehicle.
-- The car status can take one of three predefined values: 'Available', 'Sold', 'In Repair'.
ALTER TABLE Inventories
ADD CONSTRAINT CHK_Inventories_Status CHECK (Status IN ('Available', 'Sold', 'In Repair'));

