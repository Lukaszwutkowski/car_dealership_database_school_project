# car_dealership_database_school_project

`Car_dealership` is a database designed to manage operations within a car dealership. The system enables effective tracking and management of key aspects of the dealership's activities, including vehicle inventory, sales transactions, customer information, and service actions. The aim of this project is to streamline business processes, ensure data accuracy, and facilitate business decision-making by providing quick access to essential information.

Key Functionalities:


1.	Vehicle Inventory Management: The database allows for accurate tracking of all vehicles available at the dealership, along with their detailed specifications, such as make, model, year of manufacture, engine type and power, as well as condition (new/used) and mileage.

2.	Sales Management: The system records all sales transactions, enabling tracking of vehicles sold, sales prices, and assigning sales to specific dealership employees, which allows for analysis of sales performance.

3.	Customer Information: The database stores detailed information about customers, including their contact and address details, facilitating customer relationship building and management of marketing activities.

4.	Service and Maintenance: The system allows for the recording and management of service actions performed on vehicles, including service dates, descriptions of work done, and costs.

5.	Audit and Monitoring: With an `AuditLog` table, the project provides the capability to track significant changes in the database, thereby increasing security and user accountability. 


# Getting Started with the Car Dealership Database

This manual will guide you through the process of setting up and using the Car Dealership Database. The database is designed to manage operations within a car dealership, including vehicle inventory, sales transactions, customer information, and service actions.

# Prerequisites

Before starting, ensure that you have:

1. Access to a Microsoft SQL Server instance.
2. Permission to create and manage databases.
3. Basic knowledge of SQL.

# Setup Instructions

1. Download the SQL Scripts: Obtain the SQL scripts provided for setting up the Car Dealership Database. These scripts include creating the database schema and inserting sample data.

2. Connect to Microsoft SQL Server: Use SQL Server Management Studio (SSMS) or any SQL client to connect to your SQL Server instance.

3. Run the Setup Script: Execute the `Car_dealership_database_setup.sql` script to create the database schema. This script contains the necessary SQL statements to create tables and define relationships.

4. Insert Sample Data: Run the `Car_dealership_sample_data.sql` script to populate the database with sample data. This data includes information about cars, employees, customers, sales, services, and inventory.

# Usage Instructions

Once the database setup is complete, you can start using the Car Dealership Database for various tasks:

1. Managing Vehicle Inventory: Use SQL queries to view, add, update, or remove vehicles from the inventory.

2. Recording Sales Transactions: Record sales transactions by inserting data into the `Sales` table. Ensure that you include the relevant customer, vehicle, and employee IDs.

3. Tracking Customer Information: Access customer details stored in the `Customers` table to manage relationships and marketing activities.

4. Recording Service Actions: Log service actions performed on vehicles by inserting records into the `Services` table. Include the vehicle VIN, service date, description, and cost.

5. Monitoring Inventory Status: Monitor the status of vehicles in the inventory by querying the `Inventories` table. Check whether vehicles are available for sale, sold, or undergoing repairs.

# Troubleshooting

If you encounter any issues during setup or usage of the database, refer to the following resources:

- Review the SQL scripts for any errors or inconsistencies.
- Check the SQL Server logs for any error messages.
- Consult the SQL Server documentation or community forums for assistance.
