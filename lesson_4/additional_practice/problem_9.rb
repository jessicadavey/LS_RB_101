words = "the flintstones rock"

# Write your own version of the rails titleize implementation.

p words.split.map { |word| word.capitalize }.join(" ")
