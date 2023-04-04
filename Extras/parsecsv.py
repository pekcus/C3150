import csv

# Define the path to your CSV file
csvPath = input("Enter the csv file path: ")

# Define the table name and column names for the database table
tableName = input("Enter the table name: ")
columnNames = input("Enter the column names, separated by commas: ").split(", ")
columnTypes = input("Enter the column data types (s for string, n for number, or f for float/real separated by commas): ").split(", ")

# Define the path to the output SQL file
sqlPath = input("Enter the name of the sql file you wish to generate: ")

# Open the CSV file for reading
with open(csvPath, 'r', encoding='utf-8-sig') as csvFile:
    # Use the DictReader to parse the file
    csvReader = csv.reader(csvFile)
    # Open the SQL file for writing
    with open(sqlPath, 'w') as sqlFile:
        # Iterate over each row in the CSV file
        for row in csvReader:
            # Convert the row values to the specified data types
            rowValues = []
            for i in range(len(row)):
                if columnTypes[i] == "n":
                    rowValues.append(int(row[i]))
                elif columnTypes[i] == "s":
                    rowValues.append("'" + row[i] + "'")
                elif columnTypes[i] == "f":
                    rowValues.append(format(float(row[i]), ".2f"))
            # Build the SQL INSERT statement
            sql = f"INSERT INTO {tableName} ({', '.join(columnNames)})\nVALUES ({', '.join(['%s']*len(rowValues))});\n"
            # Write the SQL statement to the file
            sqlFile.write(sql % tuple(rowValues))

