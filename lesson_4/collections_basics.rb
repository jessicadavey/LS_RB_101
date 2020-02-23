# How would you reference 'grass' from within this string? 
str = 'The grass is green'
# Answer:
str[4, 5]

# What do you think would be returned here? 
arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
arr[2, 3] # => ['c', 'd', 'e']
arr[2, 3][0] # => 'c'

# What happens when this runs in irb?
hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot', 'fruit' => 'pear' }
# 'fruit' is overwritten and a warning is given

# What do you think would be returned by the following calls?
str = 'ghijk'
arr = ['g', 'h', 'i', 'j', 'k']

str[-6] # => nil
arr[-6] # => nil

# Can you think of a couple of ways in which the items in the array could be 
# joined together so that result resembles the original string?
str = 'How do you get to Carnegie Hall?'
  arr = str.split # => ["How", "do", "you", "get", "to", "Carnegie", "Hall?"]
  arr.join        # => "HowdoyougettoCarnegieHall?"
# Answer:
arr.join(" ") # (or concatenate with spaces in between)

# What do you think would happen if #to_h was called on the following array?
arr = [[:name, 'Joe'], [:age, 10], [:favorite_color, 'blue']]
# Answer:
{ :name => 'Joe', :age => 10, :favorite_color => 'blue'}

# Using the same element assignment method, how would you change the first 
# letter of the remaining words in the sentence to their uppercase versions?
str = "joe's favorite color is blue"
str[0] = 'J'
str # => "Joe's favorite color is blue"
# Answer:
str[6] = "F"
str[15] = "C"
str[21] = "I"
str[-4] = "B"

# Use the same method to increase the value of the rest of the integers in 
# the array by 1.
arr = [1, 2, 3, 4, 5]
arr[0] += 1 # => 2
arr         # => [2, 2, 3, 4, 5]
# Answer:
arr[1] += 1
arr[2] += 1
arr[3] += 1
arr[4] += 1

# use the same method to set a value of either 'Fruit' or 'Vegetable' to each 
# element in the hash.

hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }

hsh[:carrot] = 'Vegetable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Vegetable'