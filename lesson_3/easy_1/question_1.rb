# Question 1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# I would expect this code to print:
# 1
# 2
# 2
# 3
# ...because the Array#uniq method is non-destructive.