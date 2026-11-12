# Read a CSV file using Pandas

import pandas as pd

# Read the CSV file
df = pd.read_csv("employee.csv")

# Display complete data
print(df)

# Display first 5 records
print(df.head())

# Display number of rows and columns
print(df.shape)

# Display column names
print(df.columns)

# Display data types
print(df.dtypes)