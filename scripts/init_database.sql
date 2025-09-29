-- Drop and recreate the 'DatWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create Database 'DataWarehouse'

 USE master;

 CREATE DATABASE DataWarehouse;

 USE DataWarehouse;

 -- Create Schemas

 CREATE SCHEMA bronze; 
 GO
 CREATE SCHEMA silver;
 GO
 CREATE SCHEMA glod;
 GO
