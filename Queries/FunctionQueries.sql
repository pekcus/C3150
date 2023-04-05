CREATE FUNCTION GetPatientCount (@Patient varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @count int
    SET @count = (SELECT COUNT(*) FROM Patient)
    RETURN @count
END
GO

CREATE FUNCTION GetDoctorCount (@Doctor varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @count int
    SET @count = (SELECT COUNT(*) FROM Doctor)
    RETURN @count
END
GO

CREATE FUNCTION GetNurseCount (@Nurse varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @count int
    SET @count = (SELECT COUNT(*) FROM Nurse)
    RETURN @count
END
GO

CREATE FUNCTION GetHospitalCount (@Hospital varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @count int
    SET @count = (SELECT COUNT(*) FROM Hospital)
    RETURN @count
END
GO

CREATE FUNCTION GetPharmacyCount (@Pharmacy varchar(100))
RETURNS int
AS
BEGIN
    DECLARE @count int
    SET @count = (SELECT COUNT(*) FROM Pharmacy)
    RETURN @count
END
GO