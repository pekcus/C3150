import csv

# Define the path to your CSV file
csv_file_path = input("Enter the csv file path: ")

# Define the table name and column names for the database table
table_name = input("Enter the table name? ")
column_names = input("Enter the column names, separated by commas: ").split(", ")
column_types = input("Enter the column data types (s for string, n for number, or f for float/real separated by commas): ").split(", ")

# Define the path to the output SQL file
sql_file_path = input("Enter the name of the sql file you wish to generate: ")

# Open the CSV file for reading
with open(csv_file_path, 'r', encoding='utf-8-sig') as csv_file:
    # Use the DictReader to parse the file
    csv_reader = csv.reader(csv_file)
    # Open the SQL file for writing
    with open(sql_file_path, 'w') as sql_file:
        # Iterate over each row in the CSV file
        for row in csv_reader:
            # Convert the row values to the specified data types
            row_values = []
            for i in range(len(row)):
                if column_types[i] == "n":
                    row_values.append(int(row[i]))
                elif column_types[i] == "s":
                    row_values.append("'" + row[i] + "'")
                elif column_types[i] == "f":
                    row_values.append(format(float(row[i]), ".2f"))
            # Build the SQL INSERT statement
            sql = f"INSERT INTO {table_name} ({', '.join(column_names)})\nVALUES ({', '.join(['%s']*len(row_values))});\n"
            # Write the SQL statement to the file
            sql_file.write(sql % tuple(row_values))

