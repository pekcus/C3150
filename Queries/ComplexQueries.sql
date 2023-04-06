/*
	COMP-3150 Final Project Submission
	Some SQL Queries for Hospital Database
	These queries are by: Nonika Reingold
*/

-- Derived Attribute: Total Cost of Drug
SELECT OrdersDrug.HospIDNo, Drug.BrandName, OrdersDrug.Amount, (Drug.Cost*(1+(Stocks.MarkUp/100))*OrdersDrug.Amount) AS TotalCost
FROM (Drug JOIN (Stocks JOIN OrdersDrug ON Stocks.DrugIDNo = OrdersDrug.DrugIDNo) ON (DrugID = Stocks.DrugIDNo AND Stocks.PharmIDNo = OrdersDrug.PharmIDNo))

-- Derived Attribute: Patient's Total Days and Cost of Stay
SELECT PatientIDNo, HospID, PrimaryDocID, DATEDIFF(day, Admitted, Discharged) AS Days, (DATEDIFF(day, Admitted, Discharged)*DailyCost) AS Cost
FROM AdmittedTo, Hospital
WHERE HospIDNo = HospID

-- Derived Attribute: Nurse's NumPatients
SELECT COUNT(*) FROM 