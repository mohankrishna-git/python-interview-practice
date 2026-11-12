# Pandas DataFrame fundamentals

import pandas as pd

# Create employee data
data = {
    "emp_id": [1001, 1002, 1003, 1004, 1005],
    "emp_name": ["Asha", "Ravi", "Neha", "Kiran", "Priya"],
    "department": ["IT", "Finance", "HR", "IT", "Sales"],
    "salary": [95000, 88000, 75000, 92000, 85000],
    "city": ["Hyderabad", "Bengaluru", "Mumbai", "Pune", "Chennai"]
}

# Create a DataFrame
df = pd.DataFrame(data)

# Display complete DataFrame
print("Employee Data:")
print(df)

# Display first 3 records
print("\nFirst 3 Records:")
print(df.head(3))

# Select a single column
print("\nEmployee Names:")
print(df["emp_name"])

# Filter employees with salary greater than 85000
print("\nEmployees with salary above 85000:")
print(df[df["salary"] > 85000])

# Add a new column
df["bonus"] = df["salary"] * 0.10

print("\nDataFrame with Bonus:")
print(df)

# Calculate average salary by department
print("\nAverage Salary by Department:")
print(df.groupby("department")["salary"].mean())

# Sort employees by salary in descending order
print("\nEmployees sorted by salary:")
print(df.sort_values("salary", ascending=False))