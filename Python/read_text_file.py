# Read data from a text file

# Open the file in read mode
with open("sample.txt", "r") as file:

    # Read the complete file content
    content = file.read()

# Display the content
print(content)