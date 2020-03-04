# Practice Problem 1
# How would you order this array of number strings by descending numeric value?
arr = ['10', '11', '9', '7', '8']

# Answer:
arr.sort do |a, b|
  b.to_i <=> a.to_i
end

# Practice Problem 2
# How would you order this array of hashes based on the year of publication 
# of each book, from the earliest to the latest?
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# Answer:
books.sort_by do |book|
  book[:published]
end


# Practice Problem 3
# For each of these collection objects demonstrate how you would reference 
# the letter 'g'.
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# Answer:
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# Answer:
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
# Answer:
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# Answer:
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# Answer:
hsh2[:third].key(0)

# Practice Problem 4
# For each of these collection objects where the value 3 occurs, demonstrate 
# how you would change this to 4.
arr1 = [1, [2, 3], 4]
# Answer:
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# Answer:
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
# Answer:
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# Answer:
hsh2[['a']][:a][2] = 4

# Practice Problem 5
# Given this nested Hash:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# figure out the total age of just the male members of the family.

# Answer:
males = munsters.select do |key, value|
  value['gender'] == 'male'
end

result = males.map do |key, value|
  value["age"]
end

result.sum

# Practice Problem 6
# Print out the name, age and gender of each family member:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# ...like this:
# (Name) is a (age)-year-old (male or female).

# Answer:
munsters.each do |key, value|
  name = key
  age = value["age"]
  gender = value["gender"]
  puts "#{name} is a #{age}-year-old #{gender}."
end

# Practice Problem 7
# what would be the final values of a and b? 
a = 2
b = [5, 8]
arr = [a, b] # arr = [2, [5, 8]]

arr[0] += 2 # arr = [4, [5, 8]]
arr[1][0] -= a # arr = [4, [3, 8]]
# Answer (guess)(Correct!):
# a = 2
# b = [3, 8]

# Practice Problem 8
# Using the each method, write some code to output all of the vowels 
# from the strings.

# Answer:
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, array|
  array.each do |string|
    string.chars.each do |char|
      puts char if char =~ /[aeiou]/
    end
  end
end

# Practice Problem 9
# Given this data structure, return a new array of the same structure but with 
# the sub arrays being ordered (alphabetically or numerically as appropriate) in 
# descending order.
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |arr|
  arr.sort do |a, b|
    b <=> a
  end
end

# Practice Problem 10
# Given the following data structure and without modifying the original array, 
# use the map method to return a new array identical in structure to the original 
# but where the value of each integer is incremented by 1.
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# Answer
arr.map do |hash|
  hash.transform_values do |v|
    v + 1
  end
end

# or

arr.map do |hash|
  hash.each do |k, v|
  hash[k] = v + 1
  end
end # this solution mutates each hash


# Practice Problem 11
# Use a combination of methods, including either the select or reject method, 
# to return a new array identical in structure to the original but containing 
# only the integers that are multiples of 3.
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# Answer:
arr.map do |arr|
  arr.select do |num|
    num % 3 == 0
  end
end

# Practice Problem 12
# Given the following data structure, and without using the Array#to_h method, 
# write some code that will return a hash where the key is the first item in each 
# sub array and the value is the second item.
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# Answer:
arr.each_with_object({}) do |sub_arr, new_hash|
  new_hash[sub_arr[0]] = sub_arr[1]
end

# Practice Problem 13
# Given the following data structure, return a new array containing the same 
# sub-arrays as the original but ordered logically by only taking into 
# consideration the odd numbers they contain.
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
# expected return value: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# Answer:
arr.sort_by do |array|
  array.select do |num|
    num.odd?
  end
end

# Practice Problem 14
# Write some code to return an array containing the colors of the fruits and the 
# sizes of the vegetables. 
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
# The return value should look like this:
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# Answer:
result = []

hsh.each do |item, details|
  if details[:type] == 'fruit'
    result << details[:colors].map do |color|
      color.capitalize
    end
  elsif details[:type] == 'vegetable'
    result << details[:size].upcase
  end
end

# Practice Problem 15
# Given this data structure write some code to return an array which contains 
# only the hashes where all the integers are even.
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# Answer:
arr.select do |hash|
  hash.values.all? do |sub_arr|
    sub_arr.all? do |num|
      num.even?
    end
  end
end


# Practice Problem 16
# Write a method that returns one UUID when called with no parameters.

HEXADEC = %w(a b c d e f 1 2 3 4 5 6 7 8 9 0)
# Answer 1:
def create_uuid
  string = ""
  while string.size < 32 do
    string << HEXADEC.sample
  end
  string.insert(8, '-')
  string.insert(13, '-')
  string.insert(18, '-')
  string.insert(23, '-')
end

# Answer 2:
def create_uuid
  str_sizes = [8, 4, 4, 4, 12]
  
  strings = str_sizes.map do |size|
    string = ""
    size.times do |x|
      string << HEXADEC.sample
    end
    string
  end
  
  strings.join("-")
end

