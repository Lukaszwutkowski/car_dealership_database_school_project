
-- Table 'Cars'
INSERT INTO Cars (VIN, Brand, Model, YearOfManufacture, EngineType, EngineCapacity, EnginePower, IsNew, Mileage)
VALUES 
('VIN12345', 'Toyota', 'Corolla', 2020, 'Gasoline', 1.8, 140, 0, 50000),
('VIN12346', 'Tesla', 'Model S', 2021, 'Electric', 75, 416, 0, 120000),
('VIN12347', 'Ford', 'Focus', 2019, 'Diesel', 2.0, 150, 0, 130000),
('VIN12348', 'Volkswagen', 'Golf', 2018, 'Diesel', 2.0, 110, 0, 40000),
('VIN12349', 'Audi', 'A4', 2019, 'Gasoline', 1.4, 150, 0, 110000),
('VIN12350', 'BMW', '3', 2024, 'Hybrid', 2.5, 184, 1, 0),
('VIN12351', 'Mercedes', 'C Klasse', 2017, 'Diesel', 2.2, 170, 0, 260000),
('VIN12352', 'Tesla', 'Model Y', 2024, 'Electric', 75, 440, 1, 0),
('VIN12353', 'Toyota', 'Prius Plus', 2013, 'Hybrid', 1.8, 140, 0, 165000),
('VIN12354', 'Skoda', 'Octavia', 2021, 'Diesel', 2.0, 204, 0, 34000),
('VIN12355', 'Toyota', 'Camry', 2024, 'Hybrid', 2.0, 170, 1, 0),
('VIN12356', 'Peugeot', '508', 2021, 'Diesel', 2.0, 130, 0, 25000),
('VIN12357', 'Renault', 'Zoe', 2020, 'Electric', 41, 120, 0, 50000),
('VIN12358', 'Toyota', 'Rav4', 2024, 'Hybrid', 2.5, 180, 1, 0),
('VIN12359', 'Mercedes', 'Model E', 2021, 'Gasoline', 2.5, 250, 0, 20000);

-- Table 'Employees'.
INSERT INTO Employees (FirstName, LastName, Position, Email, PhoneNumber, StreetAddress, City, PostalCode, Country, BaseSalary, HireDate)
VALUES 
('Jan', 'Kowalski', 'Salesperson', 'jkowalski@example.com', '123456789', 'Radhus 1', 'Oslo', '0250', 'Norway', 35000, '2021-01-10'),
('Lars', 'Nygaard', 'Salesperson', 'lnygaard@example.com', '966456789', 'Kjoping 4', 'Sandvika', '0290', 'Norway', 35000, '2023-04-05'),
('Anna', 'Nowak', 'Sales Manager', 'anowak@example.com', '987654321', 'Radhus 1', 'Oslo', '0250', 'Norway', 50000, '2020-06-15');

-- Table 'Customers'.
INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, StreetAddress, City, PostalCode, Country)
VALUES 
('Lars', 'Hansen', 'lars.hansen@example.com', '11222333', 'Gamlevei 3', 'Bergen', '5003', 'Norway'),
('Maija', 'Vestby', 'm.vest@example.com', '22332433', 'Nyveien 16', 'Oslo', '2003', 'Norway'),
('Lucia', 'Hammar', 'lu.hamm@example.com', '69825343', 'Klovre 4', 'Holmestrand', '3080', 'Norway'),
('Anders', 'Roroar', 'r.ror@example.com', '99853412', 'Sorvei 12B', 'Asker', '3045', 'Norway'),
('Maciej', 'Hanicki', 'maciek.hanicki@example.com', '98732556', 'Livvei 323C', 'Svarstad', '3275', 'Norway'),
('Kamil', 'Polski', 'kami.pol@example.com', '09854376', 'Lekia 6', 'Sande', '3003', 'Norway'),
('Nina', 'Jensen', 'nina.jensen@example.com', '43498556', 'Trolltunga 34', 'Trondheim', '7010', 'Norway');

-- Table 'Sales'.
INSERT INTO Sales (CustomerID, VIN, EmployeeID, SaleDate, SalePrice)
VALUES
(1, 'VIN12345', 1, '2024-01-15', 300000),
(2, 'VIN12346', 1, '2024-01-20', 500000),
(3, 'VIN12347', 2, '2024-01-25', 200000),
(4, 'VIN12350', 2, '2024-02-10', 450000),
(5, 'VIN12351', 2, '2024-02-15', 350000),
(6, 'VIN12352', 2, '2024-02-20', 550000),
(7, 'VIN12353', 3, '2024-03-01', 250000);

-- Table 'Services'
INSERT INTO Services (VIN, ServiceDate, Description, Cost)
VALUES
('VIN12354', '2024-02-05', 'Technical inspection', 10000),
('VIN12355', '2024-02-10', 'Engine repair', 15000);


-- Table 'Inventories'
INSERT INTO Inventories (VIN, Status, AcquisitionDate, AcquisitionPrice, Price)
VALUES
('VIN12345', 'Sold', '2023-12-01', 250000, 300000),
('VIN12346', 'Sold', '2023-12-05', 450000, 500000),
('VIN12347', 'Sold', '2023-11-15', 150000, 200000),
('VIN12350', 'Sold', '2023-12-10', 400000, 450000),
('VIN12351', 'Sold', '2023-12-20', 300000, 350000),
('VIN12352', 'Sold', '2024-01-05', 500000, 550000),
('VIN12353', 'Sold', '2024-01-10', 200000, 250000),
('VIN12354', 'In Repair', '2023-11-20', 170000, 180000),
('VIN12355', 'In Repair', '2023-12-01', 220000, 230000),
('VIN12348', 'Available', '2023-11-25', 180000, 190000),
('VIN12349', 'Available', '2023-12-15', 210000, 220000),
('VIN12356', 'Available', '2023-12-30', 250000, 260000),
('VIN12357', 'Available', '2024-01-15', 270000, 280000),
('VIN12358', 'Available', '2024-02-01', 290000, 300000),
('VIN12359', 'Available', '2024-02-15', 310000, 320000);
