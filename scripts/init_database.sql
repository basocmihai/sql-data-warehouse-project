/*
 =============================================================================
 Create Database and Schemas
 =============================================================================

 Script purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If it already exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze', 'silver', 'gold'.

 WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data will be permanently deleted. Thus ensure you have proper backups.
*/


USE master;
GO

--Drop and recreate the "DataWarehouse" database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--create the "DataWarehouse" database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

-- create Schemas

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
