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


p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}