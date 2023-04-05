CREATE TRIGGER TR_Patient_Insert
ON Patient
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(*) FROM inserted) + dbo.GetPatientCount('Patient') <= 30
    BEGIN
        INSERT INTO Patient (PatientID, PName, PhoneNo)
        SELECT PatientID, PName, PhoneNo
        FROM inserted
    END
END
GO

CREATE TRIGGER TR_Doctor_Insert
ON Doctor
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(*) FROM inserted) + dbo.GetDoctorCount('Doctor') <= 9
    BEGIN
        INSERT INTO Doctor (DocID, DName)
        SELECT DocID, DName
        FROM inserted
    END
END
GO

CREATE TRIGGER TR_Nurse_Insert
ON Nurse
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(*) FROM inserted) + dbo.GetNurseCount('Nurse') <= 15
    BEGIN
        INSERT INTO Nurse (NurseID, NName)
        SELECT NurseID, NName
        FROM inserted
    END
END
GO

CREATE TRIGGER TR_Hospital_Insert
ON Hospital
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(*) FROM inserted) + dbo.GetHospitalCount('Hospital') <= 3
    BEGIN
        INSERT INTO Hospital (HospID, HName, LocationID, DailyCost)
        SELECT HospID, HName, LocationID, DailyCost
        FROM inserted
    END
END
GO

CREATE TRIGGER TR_Pharmacy_Insert
ON Pharmacy
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(*) FROM inserted) + dbo.GetPharmacyCount('Pharmacy') <= 3
    BEGIN
        INSERT INTO Pharmacy (PharmID, LocationID)
        SELECT PharmID, LocationID
        FROM inserted
    END
END
GO

CREATE TRIGGER TR_Location_Insert
ON Location
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(*) FROM inserted) + dbo.GetLocationCount('Location') <= 3
    BEGIN
        INSERT INTO Location (LocationID, StreetNum, StreetName, City)
        SELECT LocationID, StreetNum, StreetName, City
        FROM inserted
    END
END
GO