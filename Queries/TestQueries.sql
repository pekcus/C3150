/*
	COMP-3150 Final Project Submission
	SQL Queries for Hospital Database
	Testing the Triggers
	These queries are by: Nonika Reingold
*/

/* 
	To check the Admit Trigger, let us insert the more than the maximum number of patients
	into one hospital on a specific day.
	The regular insert queries have 5 patients in the table already, so let us insert 6 more.
	Since the trigger works correctly, we will see the next 5 patients inserted, 
	but patient 7 will not be, since the hospital is full.
 */

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
SELECT * FROM AdmittedTo WHERE HospIDNo = 1 AND Admitted <= '2023-03-15' AND Discharged >= '2023-03-16'

