import pandas as pd

# Step 1: Read the employee CSV file
df = pd.read_csv("employee_practice.csv")

# Display original data
print("Original Employee Data:")
print(df)

# Step 2: Check total records
print("\nOriginal Record Count:", len(df))

# Step 3: Identify duplicate records
print("\nDuplicate Records:")
print(df[df.duplicated()])

print("\nTotal Duplicate Records:", df.duplicated().sum())

# Step 4: Identify NULL values
print("\nNULL Values in Each Column:")
print(df.isnull().sum())

# Step 5: Remove duplicate records
df = df.drop_duplicates()

print("\nRecords After Removing Duplicates:", len(df))

# Step 6: Remove records containing NULL values
df = df.dropna()

print("\nRecords After Removing NULL Values:", len(df))

# Step 7: Store cleaned data in Employee DataFrame
Employee = df.copy()

# Step 8: Display final cleaned data
print("\nFinal Cleaned Employee Data:")
print(Employee)

# Step 9: Verify cleaned data
print("\nFinal Record Count:", len(Employee))

print("\nRemaining NULL Values:")
print(Employee.isnull().sum())

print("\nRemaining Duplicate Records:", Employee.duplicated().sum())