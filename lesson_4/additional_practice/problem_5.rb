flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

flintstones.find_index { | name | name.start_with?("Be")}

# or
answer = nil
flintstones.each do | name |
  if name[0, 2] == "Be"
    answer = flintstones.index(name)
    break
  end
end
