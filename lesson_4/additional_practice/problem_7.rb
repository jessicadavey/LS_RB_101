statement = "The Flintstones Rock"

# Create a hash that expresses the frequency with which 
# each letter occurs in this string

hash = Hash.new(0)

statement.each_char do | char |
  hash[char] += 1
end

p hash