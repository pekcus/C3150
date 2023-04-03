-- BULK INSERT File
-- Note: Path names must be changed for all BULK INSERT queries to where .csv files are saved
-- Ensure all relevant .csv files are downloaded. 
-- Files should include: 
-- Entities: Hospital.csv, Doctor.csv, Nurse.csv, Patient.csv, Pharmacy.csv, Drug.csv, Location.csv
-- Relationships: AdmittedTo.csv, CaresFor.csv, Treats.csv, NWorksAt.csv, DWorksAt.csv, Stocks,csv, OrdersDrug.csv

-- Entities
BULK INSERT Hospital
FROM 'pathname/Hospital.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT Doctor
FROM 'pathname/Doctor.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT Nurse
FROM 'pathname/Nurse.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT Patient
FROM 'pathname/Patient.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT Pharmacy
FROM 'pathname/Pharmacy.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT Drug
FROM 'pathname/Drug.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT Location
FROM 'pathname/Location.csv'
WITH ( FORMAT = 'CSV');

-- Relationships
BULK INSERT AdmittedTo
FROM 'pathname/AdmittedTo.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT CaresFor
FROM 'pathname/CaresFor.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT Treats
FROM 'pathname/Treats.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT NWorksAt
FROM 'pathname/NWorksAt.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT DWorksAt
FROM 'pathname/DWorksAt.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT Stocks
FROM 'pathname/Stocks.csv'
WITH ( FORMAT = 'CSV');

BULK INSERT OrdersDrug
FROM 'pathname/OrdersDrug.csv'
WITH ( FORMAT = 'CSV');