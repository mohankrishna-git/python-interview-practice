# NumPy fundamentals

import numpy as np

# Create a NumPy array
numbers = np.array([10, 20, 30, 40, 50])

print("Array:", numbers)

# Access an array element
print("First element:", numbers[0])

# Calculate sum
print("Sum:", np.sum(numbers))

# Calculate average
print("Average:", np.mean(numbers))

# Find maximum and minimum
print("Maximum:", np.max(numbers))
print("Minimum:", np.min(numbers))

# Check array shape and dimensions
print("Shape:", numbers.shape)
print("Dimensions:", numbers.ndim)

# Perform element-wise addition
print("Addition:", numbers + 5)

# Perform element-wise multiplication
print("Multiplication:", numbers * 2)