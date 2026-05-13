import mysql.connector
import pandas as pd

# Establish connection to MySQL database
connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Atob1998",
    database="diabetes_project"
)

# SQL query
query = """
SELECT
    Outcome,
    AVG(Glucose) AS average_glucose,
    AVG(Age) AS average_age,
    AVG(BMI) AS average_bmi
FROM diabetes
GROUP BY Outcome;
"""

# Execute query and load into pandas DataFrame
df = pd.read_sql(query, connection)

# Display results
print(df)

# Close connection
connection.close()