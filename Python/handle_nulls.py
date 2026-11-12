import pandas as pd

# Read the CSV file
df = pd.read_csv("employee_nulls.csv")

# Display original data
print("Original Data:")
print(df)

# Count NULL values in each column
print("\nNULL values in each column:")
print(df.isnull().sum())

# Check total NULL values
print("\nTotal NULL values:")
print(df.isnull().sum().sum())



# Remove rows containing NULL values
df_dropped = df.dropna()

print("Data after removing NULL records:")
print(df_dropped)

print("\nRemaining records:", len(df_dropped))


# Create a copy of the original DataFrame
df_clean = df.copy()

# Replace missing salary with average salary
df_clean["salary"] = df_clean["salary"].fillna(
    df_clean["salary"].mean()
)

# Replace missing department with Unknown
df_clean["department"] = df_clean["department"].fillna("Unknown")

# Display cleaned DataFrame
print("Data after replacing NULL values:")
print(df_clean)

# Verify NULL values
print("\nNULL values after cleaning:")
print(df_clean.isnull().sum())