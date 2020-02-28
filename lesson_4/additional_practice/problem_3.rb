ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Remove people with age 100 and greater.

ages.delete_if { |_, age | age >= 100 }
# or
ages.each do | name, age |
  ages.delete(name) if age >= 100
end

p ages