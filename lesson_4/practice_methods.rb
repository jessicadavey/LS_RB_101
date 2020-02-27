# Practice Problem 1
# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# returns [1, 2, 3]
# the last line of the method returns 'hi', which is always
# truthy, so every element is selected.

# Practice Problem 2
# How does count treat the block's return value? 
# How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# counts the number of elements for which the block returns
# a true value (Ruby Documentation, Array#count)
# => 2

# Practice Problem 3
# What is the return value of reject in the following 
# code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# returns elements for which the block returns NOT true. puts
# returns nil, so all elements are not true.
# => [1, 2, 3]

# Practice Problem 4
# What is the return value of each_with_object in the 
# following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
# object parameter is an empty hash, so the method returns 
# a hash.  On each iteration, the character at index 0 of each
# value is made into a key, and assigned the value of the current
# value.

# Practice Problem 5
# What does shift do in the following code? How can we find 
# out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# Ruby documentation, Hash#shift:
# removes the first key value pair and returns it as an
# array.

# Practice Problem 6
# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# => 11
# Array#pop removes the last element from the array and returns
# it.  Calling 'size' on this return value gives the size of
# the element 'caterpillar'.

# Practice Problem 7
# What is the block's return value in the following code? 
# How is it determined? Also, what is the return value of 
# any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# block returns whether or not the element is odd, because
# num.odd? is the last line (so, true, false, true...except
# that it only runs once because any? seems to short-circuit)
# any? returns true because the block passed to it returns
# true at least one time.

# Practice Problem 8
# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# Array#take - returns the first n elements from the array.
# => [1, 2]
# also, returns a new array, so not destructive.

# Practice Problem 9
# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => ["nil", "bear"]
# there is no else condition, so if the if statement isn't 
# true then the value is nil.  Also map returns an array, even
# when run on a hash.

# Practice Problem 10
# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => [1, nil, nil]
# when num > 1, the puts statement runs and returns nil.