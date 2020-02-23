# Try running this code a few times and make a note of what you notice.
loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end
# Asnwer: prints "Hello" a different number of times each time

# What do you think will be output by the loop?
colors = ['green', 'blue', 'purple', 'orange']
counter = 0

loop do
  break if counter == colors.size
  puts "I'm the color #{colors[counter]}!"
  counter += 1
end
# Answer:
# "I'm the color green!"
# "I'm the color blue!"
# "I'm the color purple!
# "I'm the color orange!"