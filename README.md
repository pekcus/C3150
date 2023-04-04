# COMP-3150-Final-Project

These files are part of the UWindsor COMP 3150 Final Group Project.
Our group selected the hospital project topic and were required to make a database management system for three hospitals. 

# Navigation

There are three folders titled: Documentation, Queries, and TestData.
Documentation contains a pdf file describing the project and a short video presentation on the design and implementation. Queries contains all SQL query files, they are DropQuery, InsertQuery, BulkInsert, EMRSCHEMA, and SelectQuery. Finally, TestData contains all important csv files with our project data.

# Usage

In the queries folder, we suggest you run in a specific order.

1. Run DropQuery.sql as this will remove any duplicate tables and data that may conflict with the run of other files. 
2. Once DropQuery runs, run the EMRSCHEMA.sql file to create the tables. 
3. We have created both BulkInsert.sql and InsertQuery.sql into our files since Azure Data Management Studio doesn't support BULK INSERT, whereas SQL Server Management Studio does. Therefore, you will find that the InsertQuery.sql contains individual INSERT statements for this exact reason. If running on SSMS you may use the BulkInsert.sql file. 
4. If you run BulkInsert.sql, change the path of all the statements to the path where the csv files are located on your computer. However, it may be easier to simply run InsertQuery.sql regardless of OS. 
5. Once all tables have been created and all values have been inserted, run the SelectQuery.sql file to view everything in the database.

If you run into any issues while running through these steps, there is a troubleshooting section below that will hopefully help to clear everything up.

# Parser Usage

There is also a parsecsv.py file that was created to cut down the time and possibility of error when writing individual INSERT statements for Azure users or those finding trouble with BULK INSERT in general. This file can be found in the Extras folder, you can run it in terminal to generate your INSERT SQL files from your chosen CSV file. Ensure your file has no header row, and no empty rows. 

1. Upon starting it will prompt you to select the file you wish to run, use the filepath of the csv file including "FileName.csv", make sure that you change FileName to the name of the file you wish to run and that you add the .csv file extension everytime. 
Example:
Enter the csv file path: ./Hospital.csv

* Note: My parsecsv.py program is in the TestData folder when I run this. Make sure you change the filepath accordingly. parsecsv.py is currently located in Extras, but you can move it into TestData for simplicity. 

2. Next it will ask for the table name, make sure this matches the table you wish to insert into in your database.
Example:
Enter the table name: Hospital

3. It will now ask for the column headers, write them the same as the column headers in your database. Also separate them by commas and a space.
Example:
Enter the column names, separated by commas: HospID, HName, LocationID, DailyCost

4. It will then prompt you to define the type of value your columns are. There are only three options as these are what we found were necessary for our project, you can select n for number, s for string and f for float. Float is intended for REAL values in the form of cost. So it will be followed by two decimal places. 
Example:
Enter the column data types (s for string, n for number, or f for float/real) separated by commas: n, s, n, f

5. Finally it will ask you for the file you wish to generate, give the name followed by .sql
Example:
Enter the name of the sql file you wish to generate: Hospital.sql

6. Congratulations! You officially generated a SQL Insert file from a csv. 

This can feel tedious, but it surely saves more time then typing it out individually. It's fairly simple to add a while loop to get the program to prompt the user continuously for entries and generate one large sql file with insert statements for multiple tables. Just make sure to move the close statement and 
input("Enter the name of the file you wish to generate: ")
outside of your while loop so it doesn't generate the file before you finish adding data.

# Troubleshooting

Running Queries:

Q: I ran DropQuery.sql and it's displaying errors saying the objects or tables don't exist, what do I do?

A: This is perfectly fine as it means that the data doesn't exist so it can't delete it, you can run the next files now.

Q: I ran EMRSCHEMA.sql and it displayed errors saying the item already exists.

A: Ensure the database you're running the query in is the correct one, and if the problem persists after switching databases, run DropQuery.sql on the database to make sure there are no duplicate values.

Q: I'm trying to run BulkInsert.sql but it's not letting me.

A: Firstly, if you're using Azure, BULK INSERT statements don't work. Use the InsertQuery.sql file instead. If you're using SSMS, check that all filepaths are correct.

# Authors
Ryohei Takamorri, Veronika Reingold, Shieanne Bennett
