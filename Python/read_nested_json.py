# Read and process nested JSON data

import json

# Open the JSON file
with open("nested_employee.json", "r") as file:

    # Load JSON data into a Python dictionary
    data = json.load(file)

# Access basic employee details
print("Employee ID:", data["emp_id"])
print("Employee Name:", data["emp_name"])
print("Department:", data["department"])

# Access nested address details
print("City:", data["address"]["city"])
print("State:", data["address"]["state"])

# Access skills (list)
print("Employee Skills:")

for skill in data["skills"]:
    print(skill)

# Access nested project details
print("Employee Projects:")

for project in data["projects"]:
    print("Project Name:", project["project_name"])
    print("Role:", project["role"])