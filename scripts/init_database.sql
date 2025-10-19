/*
=============================================================
Create Database and Schemas
=============================================================
Purpose:
    This script creates a new database called 'DataWarehouse'. 
    If the database already exists, it will be deleted and recreated.
    It also creates three schemas in the database: 'bronze', 'silver', and 'gold'. 
*/

USE master;
GO 

-- drop and create a new database named DataWarehouse if exists already

IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the database 
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
