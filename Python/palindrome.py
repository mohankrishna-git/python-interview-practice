# Check whether a string or number is a palindrome

value = input("Enter a word or number: ")

# Convert the input to lowercase
value = value.lower()

# Reverse the input
reversed_value = value[::-1]

# Compare original and reversed values
if value == reversed_value:
    print(value, "is a palindrome")
else:
    print(value, "is not a palindrome")

# OR
text = input("Enter word:")

if text == text[::-1]:
    print("Palindrome")
else:
    print("Not Palindrome")

#OR
def is_palindrome(s):
    return s==s[::-1]
print(is_palindrome("madam"))

#OR
def is_palindrome(s):
    rev=""
    for ch in s:
        rev = ch+rev
    return s==rev
print(is_palindrome("level"))
    