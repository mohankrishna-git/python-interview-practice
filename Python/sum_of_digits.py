# Calculate the sum of digits of a number

num = int(input("Enter a number: "))

# Handle negative numbers
num = abs(num)

total = 0

# Extract each digit and calculate the sum
while num > 0:
    digit = num % 10
    total = total + digit
    num = num // 10

# Display the result
print("Sum of digits:", total)

#OR

# Calculate the sum of digits of a number

num = int(input("Enter a number: "))
sum_digits = 0

# Extract each digit and calculate the sum
while num > 0:
    digit = num % 10
    sum_digits += digit
    num = num // 10

# Display the result
print("Sum of digits:", sum_digits)