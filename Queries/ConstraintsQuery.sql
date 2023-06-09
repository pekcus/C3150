-- Table constraints
ALTER TABLE Patient ADD CONSTRAINT CK_Patient_Rows CHECK (dbo.GetPatientCount('Patient') <= 30)
ALTER TABLE Doctor ADD CONSTRAINT CK_Doctor_Rows CHECK (dbo.GetDoctorCount('Doctor') <= 9)
ALTER TABLE Nurse ADD CONSTRAINT CK_Nurse_Rows CHECK (dbo.GetNurseCount('Nurse') <= 15)
ALTER TABLE Hospital ADD CONSTRAINT CK_Hospital_Rows CHECK (dbo.GetHospitalCount('Hospital') <= 3)
ALTER TABLE Pharmacy ADD CONSTRAINT CK_Pharmacy_Rows CHECK (dbo.GetPharmacyCount('Pharmacy') <= 3)
ALTER TABLE Location ADD CONSTRAINT CK_Location_Rows CHECK (dbo.GetLocationCount('Location') <= 6)