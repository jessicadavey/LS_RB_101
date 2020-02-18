# Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected 
# "Four score and " in front of it.

prefix = "Four score and "

# Solution 1:
famous_words.prepend(prefix)
puts famous_words


famous_words = "seven years ago..."
prefix = "Four score and "

# Solution 2:
prefix << famous_words
puts prefix