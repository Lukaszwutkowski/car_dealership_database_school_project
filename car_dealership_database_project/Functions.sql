
-- The 'GetCarsByBrand' function returns a list of cars of a specific brand.
-- It accepts the brand name as a parameter.
-- Usage: SELECT * FROM dbo.GetCarsByBrand('Toyota');
CREATE FUNCTION GetCarsByBrand (@BrandName VARCHAR(50))
RETURNS TABLE
AS
RETURN
(
    SELECT VIN, Brand, Model, YearOfManufacture, EngineType, EngineCapacity, EnginePower, IsNew, Mileage
    FROM dbo.Cars
    WHERE Brand = @BrandName
);
