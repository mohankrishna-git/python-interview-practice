# Print a right-angle star triangle

rows = int(input("Enter the number of rows: "))

# Outer loop controls the number of rows
for i in range(1, rows + 1):

    # Inner loop prints stars in each row
    for j in range(i):
        print("*", end=" ")

    # Move to the next line
    print()