/*
=============================================================
Create Database
=============================================================
Script Purpose:
    Creates a new database named 'datawarehouse'. If it already exists,
    it is dropped and recreated.

WARNING:
    Running this script will drop the entire 'datawarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

-- Drop and recreate the 'datawarehouse' database
-- (WITH FORCE disconnects anyone still using it)
DROP DATABASE IF EXISTS datawarehouse WITH (FORCE);

CREATE DATABASE datawarehouse;



/*
=============================================================
Create Schemas
=============================================================
Script Purpose:
    Creates the three medallion layers: bronze, silver and gold.
*/

CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
