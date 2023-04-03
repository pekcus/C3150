-- Insert files for all tables

-- Insert Location Values
INSERT INTO Location (LocationID, StreetNum, StreetName, City)
VALUES (1, 234, 'Huron Church', 'Windsor');
INSERT INTO Location (LocationID, StreetNum, StreetName, City)
VALUES (2, 134, 'Queen Street', 'Tilbury');
INSERT INTO Location (LocationID, StreetNum, StreetName, City)
VALUES (3, 7239, 'Talbot Street', 'Essex');
INSERT INTO Location (LocationID, StreetNum, StreetName, City)
VALUES (4, 567, 'Dougall Avenue', 'Windsor');
INSERT INTO Location (LocationID, StreetNum, StreetName, City)
VALUES (5, 8765, 'Queen Street', 'Tilbury');
INSERT INTO Location (LocationID, StreetNum, StreetName, City)
VALUES (6, 7657, 'Talbot Street', 'Essex');

-- Insert Hospital Values
INSERT INTO Hospital (HospID, HName, LocationID, DailyCost)
VALUES (1, 'Windsor Regional', 1, 10.0);
INSERT INTO Hospital (HospID, HName, LocationID, DailyCost)
VALUES (2, 'Chatham-Kent Regional', 2, 15.0);
INSERT INTO Hospital (HospID, HName, LocationID, DailyCost)
VALUES (3, 'Essex Regional', 3, 5.0);

-- Insert Doctor Values
INSERT INTO Doctor (DocID, DName)
VALUES (101, 'Emily OMalley');
INSERT INTO Doctor (DocID, DName)
VALUES (562, 'Richard Vincent');
INSERT INTO Doctor (DocID, DName)
VALUES (343, 'Shane Cooper');
INSERT INTO Doctor (DocID, DName)
VALUES (764, 'Camille Fletcher');
INSERT INTO Doctor (DocID, DName)
VALUES (115, 'Rory McCovey');
INSERT INTO Doctor (DocID, DName)
VALUES (906, 'Kate Allegro');
INSERT INTO Doctor (DocID, DName)
VALUES (67, 'Laurissa Gardiner');
INSERT INTO Doctor (DocID, DName)
VALUES (418, 'Jonas Hubert');
INSERT INTO Doctor (DocID, DName)
VALUES (99, 'Simon Morris');

-- Insert Nurse Values
INSERT INTO Nurse (NurseID, NName)
VALUES (21, 'Alexis Adams');
INSERT INTO Nurse (NurseID, NName)
VALUES (402, 'Harold Lindsey');
INSERT INTO Nurse (NurseID, NName)
VALUES (563, 'Warner Howse');
INSERT INTO Nurse (NurseID, NName)
VALUES (774, 'Megan Parent');
INSERT INTO Nurse (NurseID, NName)
VALUES (75, 'Colin Irving');
INSERT INTO Nurse (NurseID, NName)
VALUES (96, 'Susanna Ryder');
INSERT INTO Nurse (NurseID, NName)
VALUES (7, 'Brandon McLeod');
INSERT INTO Nurse (NurseID, NName)
VALUES (368, 'Alby Rollins');
INSERT INTO Nurse (NurseID, NName)
VALUES (569, 'Phoebe Denvers');
INSERT INTO Nurse (NurseID, NName)
VALUES (710, 'Llyod Simmons');
INSERT INTO Nurse (NurseID, NName)
VALUES (911, 'Amanda Holt');
INSERT INTO Nurse (NurseID, NName)
VALUES (12, 'Malina McIntyre');
INSERT INTO Nurse (NurseID, NName)
VALUES (313, 'Lacey McClellan');
INSERT INTO Nurse (NurseID, NName)
VALUES (614, 'Phillip Moore');
INSERT INTO Nurse (NurseID, NName)
VALUES (15, 'Nolan MacDuff');

-- Insert Patient Values
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (1.0, 'Madelaine Kirk', '(226) 345-1075');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (2.0, 'Lisa Brooke', '(226) 551-0889');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (3.0, 'Earl Rowe', '(519) 678-9827');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (4.0, 'Eric Ritter', '(519) 798-9976');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (5.0, 'Judith Banks', '(519) 223-7628');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (6.0, 'Susan Toft', '(519) 628-9226');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (7.0, 'Geronimo Ross', '(416) 652-8628');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (8.0, 'Lyla Jervais', '(519) 622-2827');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (9.0, 'Greyson Copperfield', '(519) 627-9872');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (10.0, 'Rodney Harris', '(519) 234-9862');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (11.0, 'Tony Travert', '(226) 263-8765');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (12.0, 'Kenney Burkes', '(226) 251-8716');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (13.0, 'Mikaela Huff', '(416) 729-8827');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (14.0, 'Janet Bell', '(416) 897-2268');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (15.0, 'Selena Butcher', '(519) 627-9872');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (16.0, 'Joseph Waller', '(519) 862-9827');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (17.0, 'Gerald Small', '(226) 625-8763');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (18.0, 'Jasmine Picard', '(226) 627-8765');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (19.0, 'Colleen Kemp', '(519) 729-9825');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (20.0, 'Elliot Causey', '(519) 253-9826');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (21.0, 'Roxanne Homewood', '(519) 672-8346');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (22.0, 'Emy Brewster', '(226) 836-9802');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (23.0, 'Carson Bonner', '(226) 009-9722');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (24.0, 'Bryce Paisley', '(416) 800-2520');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (25.0, 'Cherisse Holland', '(519) 000-2571');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (26.0, 'Walt Ivers', '(226) 098-2630');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (27.0, 'Cassidy Maxwell', '(519) 002-7652');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (28.0, 'Jeremy Womack', '(519) 927-0027');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (29.0, 'Miranda Scarlett', '(519) 012-7623');
INSERT INTO Patient (PatientID, PName, PhoneNo)
VALUES (30.0, 'Emmerson Best', '(519) 027-7286');

-- Insert Pharmacy Values
INSERT INTO Pharmacy (PharmID, LocationID)
VALUES (1, 4);
INSERT INTO Pharmacy (PharmID, LocationID)
VALUES (2, 5);
INSERT INTO Pharmacy (PharmID, LocationID)
VALUES (3, 6);

-- Insert Drug Values
INSERT INTO Drug (DrugID, BrandName, ChemName, Cost)
VALUES (1, 'Tylenol', 'Acetaminophen', 10.00);
INSERT INTO Drug (DrugID, BrandName, ChemName, Cost)
VALUES (2, 'Advil', 'Ibuprofen', 11.00);
INSERT INTO Drug (DrugID, BrandName, ChemName, Cost)
VALUES (3, 'Vyvanse', 'Lisdexamfetamine dimesylate', 55.00);
INSERT INTO Drug (DrugID, BrandName, ChemName, Cost)
VALUES (4, 'Crestor', 'Rosuvastatin', 23.00);
INSERT INTO Drug (DrugID, BrandName, ChemName, Cost)
VALUES (5, 'Axpinet', 'Metformin', 47.00);
INSERT INTO Drug (DrugID, BrandName, ChemName, Cost)
VALUES (6, 'Norvasc', 'Amlodipine', 78.00);

-- Insert AdmittedTo Values
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 1, 101, '2023-03-11', '2023-04-01');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (3, 2, 764, '2023-03-04', '2023-03-05');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (2, 3, 343, '2023-01-11', '2023-02-25');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 4, 562, '2023-04-01', '2023-04-02');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (2, 5, 343, '2023-02-25', '2023-03-25');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (3, 6, 764, '2023-02-13', '2023-03-01');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (3, 7, 906, '2023-02-07', '2023-02-09');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (2, 8, 67, '2023-01-19', '2023-01-29');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 9, 101, '2023-01-28', '2023-04-01');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 10, 101, '2023-03-01', '2023-04-01');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 11, 562, '2023-03-05', '2023-03-25');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (3, 12, 906, '2023-04-02', '2023-04-02');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (3, 13, 115, '2023-04-02', '2023-04-02');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (3, 14, 906, '2023-02-02', '2023-03-02');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (2, 15, 343, '2023-01-08', '2023-01-18');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 16, 562, '2023-01-15', '2023-02-23');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 17, 418, '2023-03-07', '2023-03-15');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (2, 18, 67, '2023-03-09', '2023-03-26');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (3, 19, 906, '2023-04-01', '2023-04-02');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (3, 20, 115, '2023-02-19', '2023-03-03');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (2, 21, 99, '2023-03-17', '2023-04-01');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 22, 418, '2023-02-12', '2023-03-10');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (2, 23, 67, '2023-01-08', '2023-01-20');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (3, 24, 115, '2023-01-09', '2023-03-09');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (2, 25, 99, '2023-02-17', '2023-02-19');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 26, 418, '2023-02-27', '2023-02-28');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (3, 27, 764, '2023-03-21', '2023-03-22');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (2, 28, 343, '2023-03-24', '2023-03-25');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (1, 29, 418, '2023-03-04', '2023-03-27');
INSERT INTO AdmittedTo (HospIDNo, PatientIDNo, PrimaryDocID, Admitted, Discharged)
VALUES (2, 30, 67, '2023-01-29', '2023-03-15');

-- Insert CaresFor Values
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (402, 1);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (96, 4);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (911, 9);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (12, 10);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (313, 11);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (402, 16);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (96, 17);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (911, 22);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (12, 26);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (313, 29);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (774, 3);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (75, 5);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (7, 8);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (368, 15);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (15, 18);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (774, 21);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (75, 23);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (7, 25);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (368, 28);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (15, 30);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (21, 2);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (563, 6);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (569, 7);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (710, 12);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (614, 13);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (21, 14);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (563, 19);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (569, 20);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (710, 24);
INSERT INTO CaresFor (NurseIDNo, PatientIDNo)
VALUES (614, 27);

-- Insert Treats Values
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (101, 1, 'Concussion', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (764, 2, 'Heart Attack', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (343, 3, 'Amputation', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (562, 4, 'Tumor', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (343, 5, 'Birth', 'C Section');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (764, 6, 'Birth', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (906, 7, 'Concussion', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (67, 8, 'Heart Failure', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (101, 9, 'Meningitis', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (101, 10, 'Birth', 'C Section');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (562, 11, 'Birth', 'C Section');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (906, 12, 'Tumor', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (115, 13, 'Meningitis', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (906, 14, 'Tumor', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (343, 15, 'Heart Failure', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (562, 16, 'Heart Attack', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (418, 17, 'Birth', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (67, 18, 'Heart Attack', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (906, 19, 'Tumor', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (115, 20, 'Cancer', 'Chemotherapy');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (99, 21, 'Heart Attack', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (418, 22, 'Influenza', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (67, 23, 'Tumor', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (115, 24, 'Birth', 'C Section');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (99, 25, 'Cancer', 'Chemotherapy');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (418, 26, 'Influenza', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (764, 27, 'Concussion', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (343, 28, 'Cancer', 'Medication');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (418, 29, 'Heart Failure', 'Surgery');
INSERT INTO Treats (DocIDNo, PatientIDNo, Illness, Treatment)
VALUES (67, 30, 'Food Poisoning', 'Medication');

-- Insert NWorksAt Values
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (21, 3);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (402, 1);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (563, 3);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (774, 2);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (75, 2);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (96, 1);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (7, 2);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (368, 2);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (569, 3);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (710, 3);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (911, 1);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (12, 1);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (313, 1);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (614, 3);
INSERT INTO NWorksAt (NurseIDNo, HospIDNo)
VALUES (15, 2);

-- Insert DWorksAt Values
INSERT INTO DWorksAt (DocIDNo, HospIDNo)
VALUES (101, 1);
INSERT INTO DWorksAt (DocIDNo, HospIDNo)
VALUES (562, 1);
INSERT INTO DWorksAt (DocIDNo, HospIDNo)
VALUES (343, 2);
INSERT INTO DWorksAt (DocIDNo, HospIDNo)
VALUES (764, 3);
INSERT INTO DWorksAt (DocIDNo, HospIDNo)
VALUES (115, 3);
INSERT INTO DWorksAt (DocIDNo, HospIDNo)
VALUES (906, 3);
INSERT INTO DWorksAt (DocIDNo, HospIDNo)
VALUES (67, 2);
INSERT INTO DWorksAt (DocIDNo, HospIDNo)
VALUES (418, 1);
INSERT INTO DWorksAt (DocIDNo, HospIDNo)
VALUES (99, 2);

-- Insert Stocks Values
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (1, 1, 10.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (1, 2, 11.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (1, 4, 8.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (1, 5, 35.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (2, 1, 12.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (2, 2, 67.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (2, 3, 15.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (2, 4, 89.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (2, 5, 45.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (2, 6, 26.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (3, 2, 72.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (3, 3, 45.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (3, 5, 36.00);
INSERT INTO Stocks (PharmIDNo, DrugIDNo, MarkUp)
VALUES (3, 6, 17.00);

-- Insert OrdersDrug Values
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (1, 1, 1, 10.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (1, 1, 4, 8.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (1, 1, 5, 35.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (1, 2, 2, 67.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (2, 2, 4, 89.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (2, 2, 6, 26.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (2, 3, 5, 36.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (3, 3, 6, 17.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (3, 1, 1, 10.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (3, 1, 2, 11.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (3, 2, 3, 15.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (3, 1, 4, 8.00);
INSERT INTO OrdersDrug (HospIDNo, PharmIDNo, DrugIDNo, Amount)
VALUES (3, 1, 5, 35.00);