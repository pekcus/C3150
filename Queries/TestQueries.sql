/*
	COMP-3150 Final Project Submission
	SQL Queries for Hospital Database
	Testing the Triggers
	These queries are by: Nonika Reingold
*/


/* 
	To check the second condition of Admit Trigger, let us insert a patient into a hospital
	while they are already admitted.
 */
 
 BEGIN
 -- Patient 1 is admitted into hospital 1 from 2023-03-11 to 2023-04-01
 SELECT * FROM AdmittedTo WHERE PatientIDNo = 1;
 -- Trying to admit this patient into the same hospital during the patient's stay should not work.
 INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
 VALUES (1, 1, 418, '2023-03-15', '2023-03-16');
 -- Trying to admit this patient into a different hospital during the patient's stay should not work.
 INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
 VALUES (2, 1, 343, '2023-03-15', '2023-03-16');
 -- Trying to admit this patient into any hospital at any other time should work.
 INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
 VALUES (2, 1, 343, '2023-04-01', '2023-04-02');
 -- Expected output: patient 1 is only AdmittedTo two times (the original, and the above 1-day stay in April.
 SELECT * FROM AdmittedTo WHERE PatientIDNo = 1;
 END
 GO

/* 
	To check the Admit Trigger, let us insert the more than the maximum number of patients
	into one hospital on a specific day.
	The regular insert queries have 5 patients in the table already, so let us insert 6 more.
	Since the trigger works correctly, we will see the next 5 patients inserted, 
	but patient 7 will not be, since the hospital is full.
 */

BEGIN
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 2, 418, '2023-03-15', '2023-03-16');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 3, 418, '2023-03-15', '2023-03-16');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 4, 418, '2023-03-15', '2023-03-17');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 5, 562, '2023-03-15', '2023-03-17');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 6, 562, '2023-03-15', '2023-03-17');
-- This patient should not be inserted.
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 7, 562, '2023-03-15', '2023-03-17');
-- Expected output: patients 1-6, 9-11, and 29 are output. Patient 7 was not inserted
SELECT * FROM AdmittedTo WHERE HospIDNo = 1 AND Admitted <= '2023-03-15' AND Discharged >= '2023-03-16';
END
GO
