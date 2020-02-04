## Write out pseudo-code (both casual and formal) that does the following:

# 1. a method that returns the sum of two integers

# Casual Pseudocode:

Given two integers.

Add these two integers together.

Output the sum.

# Formal Pseudocode:

START

Given two integers called "num1" and "num2"

SET sum = num1 + num2

PRINT sum

END


# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
# Casual Pseudocode:

Given an array of strings.

Iterate through the strings one by one:
  - Save the first string.
  - Move to the next string and add it to the saved string.
  - Stop at the end of the array.

When finished iterating, return the saved string.

# Formal Pseudocode:
START

Given an array of strings called "str_array"

SET iterator = 1
SET saved_string = "" (empty string)

WHILE iterator <= length of str_array
  SET current_string = string in str_array at position "iterator"
  saved_string = saved_string + current_string

  iterator = iterator + 1

PRINT saved_string
END

# 3. a method that takes an array of integers, and returns a new array with every other element
# Casual Pseudocode:

Given an array of integers:

  - initialize a new empty array

Iterate through the array of integers one by one
  - if the position of the current integer is an odd number
      - add the current integer to the new array
  - otherwise
      - don't add the current integer to the new array
      - instead, go back to the beginning of the loop

When finished iterating, return the new array.

# Formal Pseudocode:

START

Given an array of integers called "numbers"

SET iterator = 1
SET new_array = []

WHILE iterator <= length of numbers
  SET current_number = number at position "iterator"
  IF iterator % 2 != 0 
    add current_number to the end of new_array
  ELSE
    go to next iteration

iterator = iterator + 1


PRINT new_array

END