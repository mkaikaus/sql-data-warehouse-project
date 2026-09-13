/*

==========================================
Create Database and Schemas
==========================================

Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver' and 'gold'.

Warning:
    Running this script will drop the entire 'DataWarehouse' Database if it exists.
    All data in the datbase will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.

*/

USE master;
GO

IF EXISTS(SELECT 1 from sys.databases WHERE name= ' DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the "DataWarehouse" database
Create DATABASE DataWarehouse;
GO

USE DataWarehouse
GO

-- Create schenmas

Create SCHEMA bronze;
GO

Create SCHEMA silver;
GO

Create SCHEMA gold;
GO
