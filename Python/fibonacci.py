# Fibonacci series practice on feature branch
# Generate the Fibonacci series

n = int(input("Enter the number of terms: "))

# Initialize the first two numbers
a = 0
b = 1

print("Fibonacci Series:")

for i in range(n):
    print(a, end=" ")

    # Calculate the next number
    next_number = a + b

    # Update the values
    a = b
    b = next_number