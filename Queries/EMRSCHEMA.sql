/*
	COMP-3150 Final Project Submission
  SCHEMA Queries
	These queries are by: Shieanne Bennet and Nonika Reingold
	EMR Schema query file to setup tables
	for the database. Use DropQuery.sql
	first to ensure no duplicate or
	conflicting data is present.
*/

CREATE SCHEMA EMR
    -- Entity tables
    CREATE TABLE dbo.Doctor(
        DocID INT NOT NULL,
        DName NVARCHAR(50) NOT NULL,
        PRIMARY KEY (DocID)
        );
    GO

    CREATE TABLE dbo.Hospital(
        HospID INT NOT NULL,
        HName NVARCHAR(50) NOT NULL,
        LocationID INT NOT NULL,
        DailyCost REAL NOT NULL,
        PRIMARY KEY (HospID)
        );
    GO

    CREATE TABLE dbo.Patient (
        PatientID INT NOT NULL,
        PName VARCHAR(30) NOT NULL,
        PhoneNo VARCHAR(14) NOT NULL,
        PRIMARY KEY (PatientID)
        );
    GO

    CREATE TABLE dbo.Nurse (
        NurseID INT NOT NULL,
        NName VARCHAR(30) NOT NULL,
        PRIMARY KEY (NurseID)
        );
    GO

    CREATE TABLE dbo.Location (
        LocationID INT NOT NULL,
        StreetNum INT NOT NULL,
        StreetName VARCHAR(30) NOT NULL,
        City VARCHAR(30) NOT NULL,
        PRIMARY KEY (LocationID)
        );
    GO

    CREATE TABLE dbo.Pharmacy (
        PharmID INT NOT NULL,
        LocationID INT NOT NULL,
        PRIMARY KEY (PharmID)
        );
    GO

    CREATE TABLE dbo.Drug (
        DrugID INT NOT NULL,
        BrandName VARCHAR(30) NOT NULL,
        ChemName VARCHAR(30) NOT NULL,
        Cost REAL NOT NULL,
        PRIMARY KEY (DrugID)
        );
    GO

    -- Relationship Tables
    CREATE TABLE dbo.DWorksAt(
        DocIDNo INT NOT NULL,
        HospIDNo INT NOT NULL,
        PRIMARY KEY (DocIDNo, HospIDNo),
        FOREIGN KEY (DocIDNo) REFERENCES Doctor(DocID),
        FOREIGN KEY (HospIDNo) REFERENCES Hospital(HospID)
        );
    GO

    CREATE TABLE dbo.NWorksAt (
        NurseIDNo INT NOT NULL,
        HospIDNo INT NOT NULL,
        PRIMARY KEY (NurseIDNo, HospIDNo),
        FOREIGN KEY (NurseIDNo) REFERENCES Nurse(NurseID),
        FOREIGN KEY (HospIDNo) REFERENCES Hospital(HospID)
        );
    GO  

    CREATE TABLE dbo.AdmittedTo (
        HospIDNo INT NOT NULL,
        PatientIDNo INT NOT NULL,
        PrimaryDocID INT NOT NULL,
        Admitted DATE NOT NULL,
        Discharged DATE NOT NULL,
        PRIMARY KEY (HospIDNo, PatientIDNo, Admitted, Discharged),
        FOREIGN KEY (HospIDNo) REFERENCES Hospital(HospID),
        FOREIGN KEY (PatientIDNo) REFERENCES Patient(PatientID)
        );
    GO

    CREATE TABLE dbo.Treats (
        DocIDNo INT NOT NULL,
        PatientIDNo INT NOT NULL,
        Illness VARCHAR(30),
        Treatment VARCHAR(30),
        PRIMARY KEY (DocIDNo, PatientIDNo),
        FOREIGN KEY (DocIDNo) REFERENCES Doctor(DocID),
        FOREIGN KEY (PatientIDNo) REFERENCES Patient(PatientID)
        );
    GO

    CREATE TABLE dbo.CaresFor (
        NurseIDNo INT NOT NULL,
        PatientIDNo INT NOT NULL,
        PRIMARY KEY (NurseIDNo, PatientIDNo),
        FOREIGN KEY (NurseIDNo) REFERENCES Nurse(NurseID),
        FOREIGN KEY (PatientIDNo) REFERENCES Patient(PatientID)
        );
    GO

    CREATE TABLE dbo.Stocks (
        PharmIDNo INT NOT NULL,
        DrugIDNo INT NOT NULL,
        MarkUp REAL NOT NULL,
        PRIMARY KEY (PharmIDNo, DrugIDNo),
        FOREIGN KEY (PharmIDNo) REFERENCES Pharmacy(PharmID),
        FOREIGN KEY (DrugIDNo) REFERENCES Drug(DrugID)
        );
    GO

    CREATE TABLE dbo.OrdersDrug (
        HospIDNo INT NOT NULL,
        PharmIDNo INT NOT NULL,
        DrugIDNo INT NOT NULL,
        Amount INT NOT NULL,
        PRIMARY KEY (HospIDNo, PharmIDNo, DrugIDNo),
        FOREIGN KEY (HospIDNo) REFERENCES Hospital(HospID),
        FOREIGN KEY (PharmIDNo) REFERENCES Pharmacy(PharmID),
        FOREIGN KEY (DrugIDNo) REFERENCES Drug(DrugID)
        );
    GO
GO
