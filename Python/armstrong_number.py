# Check whether a number is an Armstrong number

num = int(input("Enter a number: "))

# Negative numbers are not Armstrong numbers
if num < 0:
    print(num, "is not an Armstrong number")

else:
    # Count the number of digits
    power = len(str(num))

    temp = num
    total = 0

    # Extract digits and calculate their powers
    while temp > 0:
        digit = temp % 10
        total = total + (digit ** power)
        temp = temp // 10

    # Compare the calculated sum with original number
    if total == num:
        print(num, "is an Armstrong number")
    else:
        print(num, "is not an Armstrong number")

#OR

# Check whether a number is an Armstrong number
num = int(input("Enter a number: "))

# Negative numbers are not Armstrong numbers
if num < 0:
    print(num, "is not an Armstrong number")

else:
    temp = num
    digits = len(str(num))
    sum_val = 0

    # Extract digits and calculate their powers
    while temp > 0:
        digit = temp % 10
        sum_val += digit ** digits
        temp = temp // 10

    # Compare the calculated sum with original number
    if sum_val == num:
        print(num, "is an Armstrong number")
    else:
        print(num, "is not an Armstrong number")