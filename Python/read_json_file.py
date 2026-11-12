# Read data from a JSON file

import json

# Open the JSON file in read mode
with open("sample.json", "r") as file:

    # Load JSON data into a Python dictionary
    data = json.load(file)

# Display the complete data
print(data)

# Access individual values
print("Employee ID:", data["emp_id"])
print("Employee Name:", data["emp_name"])
print("Department:", data["department"])
print("Salary:", data["salary"])
print("City:", data["city"])