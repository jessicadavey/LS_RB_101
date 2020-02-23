# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# input: string
# output: array of strings
# rules:
#   Explicit requirements:
#     - every section of the string that is the same back to front should be returned
#     - case matters
#   Implicit requirements:
#     - also return substrings of substrings, if they are palindromes
#     - if given an empty string, return an empty string
#     - if no substrings are palindromes, return an empty string