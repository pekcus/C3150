/*
	Author: Shieanne Bennett
	COMP-3150 Final Project Submission
	Drop Queries for Hospital Database, provided
	to verify no duplicate data exists in the
	database. Run before EMRSCHEMA.sql
*/

-- Drop relationship tables first since they contain
-- foreign keys and will prevent entity tables from
-- being dropped.
DROP TABLE DWorksAt;
GO
DROP TABLE NWorksAt;
GO
DROP TABLE AdmittedTo;
GO
DROP TABLE Treats;
GO
DROP TABLE CaresFor;
GO
DROP TABLE Stocks;
GO
DROP TABLE OrdersDrug;

-- Drop entity tables after relationship tables
-- due to use of foreign keys which prevent them
-- from being dropped.
DROP TABLE Doctor;
GO
DROP TABLE Hospital;
GO
DROP TABLE Patient;
GO
DROP TABLE Nurse;
GO
DROP TABLE Location;
GO
DROP TABLE Pharmacy;
GO
DROP TABLE Drug;
GO

-- Drop schema so you can create it 
-- if it's already present
DROP SCHEMA EMR;
GO
