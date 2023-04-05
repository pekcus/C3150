/*
	Author: Shieanne Bennett
	COMP-3150 Final Project Submission
	Select queries for Hospital Database.
*/

-- Show all table headers

-- Entity tables
SELECT * FROM Hospital;
SELECT * FROM Doctor;
SELECT * FROM Nurse;
SELECT * FROM Patient;
SELECT * FROM Location;
SELECT * FROM Pharmacy;
SELECT * FROM Drug;

-- Relationship tables
SELECT * FROM DWorksAt;
SELECT * FROM NWorksAt;
SELECT * FROM AdmittedTo;
SELECT * FROM Treats;
SELECT * FROM CaresFor;
SELECT * FROM Stocks;
SELECT * FROM OrdersDrug;

-- Select queries to list patients at each hospital
SELECT * FROM AdmittedTo WHERE HospIDNo = 1;
SELECT * FROM AdmittedTo WHERE HospIDNo = 2;
SELECT * FROM AdmittedTo WHERE HospIDNo = 3;

-- Select queries to list doctors working at each hospital
SELECT * FROM DWorksAt WHERE HospIDNo = 1;
SELECT * FROM DWorksAt WHERE HospIDNo = 2;
SELECT * FROM DWorksAt WHERE HospIDNo = 3;

-- Select queries to list nurses working at each hospital
SELECT * FROM NWorksAt WHERE HospIDNo = 1;
SELECT * FROM NWorksAt WHERE HospIDNo = 2;
SELECT * FROM NWorksAt WHERE HospIDNo = 3;

-- Select queries to list patients of doctor

-- Select queries to list patients of nurse

-- Select statement to list bills outstanding for each hospital by each pharmacy
