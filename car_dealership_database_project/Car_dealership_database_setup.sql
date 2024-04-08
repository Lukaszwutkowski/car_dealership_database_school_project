CREATE DATABASE Car_dealership

-- The Cars table stores information about the vehicles available at the dealership.
-- Each car is uniquely identified by its VIN (Vehicle Identification Number).
CREATE TABLE Cars (
    VIN VARCHAR(50) PRIMARY KEY, -- Unique Vehicle Identification Number
    Brand VARCHAR(50) NOT NULL, 
    Model VARCHAR(50) NOT NULL, 
    YearOfManufacture INT NOT NULL, 
    EngineType VARCHAR(50) NOT NULL, --Engine type (e.g. Diesel, Gasoline, Hybrid, Electric)
    EngineCapacity DECIMAL(5, 2) NOT NULL, -- Engine Capacity. For electric vehicles, the battery capacity should be specified, expressed in kWh.
    EnginePower INT NOT NULL, -- Engine Power expressed in HP (Horsepower)
    IsNew BIT NOT NULL, -- 1 indicates that the car is new, 0 indicates that the car is used.
    Mileage INT -- Car mileage in kilometers
);

-- The `Employees` table contains information about the dealership's employees.
-- Each employee is identified by a unique EmployeeID. 
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1), -- Unique Employee Identifier
    FirstName VARCHAR(50) NOT NULL, 
    LastName VARCHAR(50) NOT NULL, 
    Position VARCHAR(50) NOT NULL, 
    Email VARCHAR(100) NOT NULL, 
    PhoneNumber VARCHAR(15) NOT NULL,
    StreetAddress VARCHAR(255) NOT NULL, -- Detailed street address along with apartment or house number
    City VARCHAR(100) NOT NULL,
    PostalCode VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    BaseSalary MONEY NOT NULL, -- Employee's monthly salary
    HireDate DATE NOT NULL -- Employee's employment date
);

-- The `Customers` table stores information about the dealership's clients.
-- Each customer is identified by a unique CustomerID.
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1), -- Unique Customer Identifier
    FirstName VARCHAR(50) NOT NULL, 
    LastName VARCHAR(50) NOT NULL, 
    Email VARCHAR(100), 
    PhoneNumber VARCHAR(50), -- Customer's phone number, including the country code for international customers.
    StreetAddress VARCHAR(255) NOT NULL, -- Detailed street address along with the apartment or house number.
    City VARCHAR(255) NOT NULL,
    PostalCode VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
);

-- The `Inventories` table monitors the status of cars in the dealership's stock.
-- Each entry is identified by a unique InventoryID.
CREATE TABLE Inventories (
    InventoryID INT PRIMARY KEY IDENTITY(1,1), -- Unique inventory entry identifier.
VIN VARCHAR(50) NOT NULL, -- Foreign key to the `Cars` table, cannot be null.    Status VARCHAR(50) NOT NULL, -- Car status (‘Available’, ‘Sold’ or ‘In Repair’).
    AcquisitionDate DATE NOT NULL, -- Date the dealership acquired the car.
    AcquisitionPrice MONEY NOT NULL, -- Purchase price of the car by the dealership.
    Price MONEY NOT NULL, -- Car price.
    CONSTRAINT FK_Inventories_Cars FOREIGN KEY (VIN) REFERENCES Cars(VIN)
);

-- The `Sales` table records information about car sales.
-- Each sale is identified by a unique SaleID.
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1), -- Unique sale identifier.
    CustomerID INT NOT NULL, -- Foreign key to the `Customers` table, cannot be null.
VIN VARCHAR(50) NOT NULL, -- Foreign key to the `Cars` table, cannot be null.    EmployeeID INT NOT NULL, -- Foreign key to the `Employees` table, cannot be null.   
SaleDate DATE NOT NULL, -- Sale date, cannot be null.
    SalePrice MONEY NOT NULL -- Sale price, cannot be null.
    CONSTRAINT FK_Sales_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    CONSTRAINT FK_Sales_Cars FOREIGN KEY (VIN) REFERENCES Cars(VIN),
    CONSTRAINT FK_Sales_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- The `Services` table records information about services performed on cars.
-- Each service is identified by a unique ServiceID.
CREATE TABLE Services (
    ServiceID INT PRIMARY KEY IDENTITY(1,1), -- Unique service identifier.
    VIN VARCHAR(50) NOT NULL, -- Foreign key to the `Cars` table, cannot be null.
    ServiceDate DATE NOT NULL, 
    Description VARCHAR(255) NOT NULL, -- Service description, containing information about the type of repair.
    Cost MONEY NOT NULL -- Service cost, cannot be null.
    CONSTRAINT FK_Services_Cars FOREIGN KEY (VIN) REFERENCES Cars(VIN)
);

-- The `AuditLog` table is used to track important operations performed on the database.
CREATE TABLE AuditLog (
    AuditID INT PRIMARY KEY IDENTITY(1,1), -- Unique identifier of the performed change.
    TableName VARCHAR(100) NOT NULL, -- Name of the table where the change was made.
    OperationType VARCHAR(50) NOT NULL, -- Type of operation (e.g., INSERT, UPDATE, DELETE).
    OperationDetails NVARCHAR(MAX), -- Detailed description of the operation.
    OperationDate DATETIME NOT NULL DEFAULT GETDATE(), -- Date and time of the operation.
    UserName NVARCHAR(128), -- Username of the user performing the operation.
);
