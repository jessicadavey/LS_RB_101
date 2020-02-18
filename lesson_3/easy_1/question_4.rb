numbers = [1, 2, 3, 4, 5]

# What do the following method calls do 
# (assume we reset numbers to the original 
# array between method calls)?

numbers.delete_at(1) # deletes the element at index 1 (i.e., 2)
p numbers # => [1, 3, 4, 5]

numbers = [1, 2, 3, 4, 5]

numbers.delete(1) # deletes the element 1
p numbers # => [2, 3, 4, 5]