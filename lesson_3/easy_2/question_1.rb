ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# See if "Spot" is present.

p ages.has_key?("Spot") # => false

# or
p ages.member?("Spot") # => false

# or
p ages.include?("Spot") # => false