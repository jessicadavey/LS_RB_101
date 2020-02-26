# Select the key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

empty = {}

def select_fruit(produce)

  counter = 0
  produce_keys = produce.keys
  fruit = {}

  loop do
    break if counter == produce.size
    current_key = produce_keys[counter]

    if produce[current_key] == 'Fruit'
      fruit[current_key] = produce[current_key]
    end
    
    counter += 1
  end

  fruit
end

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

#  Implement a double_numbers! method that mutates its argument:

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2
    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]


# Try coding a solution that doubles the numbers that have odd indices:

def double_odd_indices(numbers)
  counter = 0
  doubled_numbers = []

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]

    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_odd_indices(my_numbers)  # => [1, 8, 3, 14, 2, 12]

# Create a method called multiply that can take an additional 
# argument to determine the transformation criteria.

def multiply(numbers, transformation_criteria)
  counter = 0
  transformed_numbers = []

  loop do
    break if counter == numbers.size
      transformed_numbers << numbers[counter] * transformation_criteria
    counter += 1
  end

  transformed_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]