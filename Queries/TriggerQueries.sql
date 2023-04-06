/*
	COMP-3150 Final Project Submission
	Triggers for Hospital Database
	These queries are by: Shieanne Bennet and Nonika Reingold
*/

CREATE TRIGGER TR_Admit_Insert
ON AdmittedTo
INSTEAD OF INSERT
AS
BEGIN
-- To successfully insert a patient into AdmittedTo, the hospital must have space for them 
    IF (((SELECT COUNT(*) FROM inserted) + (SELECT COUNT(*) FROM AdmittedTo, inserted 
	WHERE inserted.HospIDNo = AdmittedTo.HospIDNo AND 
	(AdmittedTo.Admitted <= inserted.Admitted AND AdmittedTo.Discharged > inserted.Admitted)) <= 10)
-- AND the patient is not already admitted
	AND (SELECT COUNT(*) FROM AdmittedTo, inserted 
	WHERE (inserted.PatientIDNo = AdmittedTo.PatientIDNo AND 
	(AdmittedTo.Admitted <= inserted.Admitted AND AdmittedTo.Discharged > inserted.Admitted))) = 0)
    BEGIN
        INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
        SELECT HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged
        FROM inserted;
    END
END
GO

CREATE TRIGGER TR_Patient_Insert
ON Patient
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(*) FROM inserted) + dbo.GetPatientCount('Patient') <= 30
    BEGIN
        INSERT INTO Patient (PatientID, PName, PhoneNo)
        SELECT PatientID, PName, PhoneNo
        FROM inserted;
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
        FROM inserted;
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
        FROM inserted;
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
        FROM inserted;
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
        FROM inserted;
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
        FROM inserted;
    END
END
GO