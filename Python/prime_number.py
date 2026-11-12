# Updated for GitHub Pull Request practice
# Program to check whether a number is prime
# Practising Git version control

# Check whether a number is prime or not

num = int(input("Enter a number: "))

# Numbers less than or equal to 1 are not prime
if num <= 1:
    print(num, "is not a prime number")

else:
    is_prime = True

    # Check whether the number is divisible by any number
    for i in range(2, num):
        if num % i == 0:
            is_prime = False
            break

    # Display the result
    if is_prime:
        print(num, "is a prime number")
    else:
        print(num, "is not a prime number")

#OR
num = int(input("Enter a number: "))
is_prime = True

if num <= 1:
    is_prime = False
else:
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            is_prime = False
            break

if is_prime:
    print("Prime number")
else:
    print("Not a prime number")
