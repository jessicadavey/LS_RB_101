flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

new_array = []

flintstones.each do |name, num|
  if name == "Barney"
    new_array << name
    new_array << num
  end
end

p new_array

# or

p flintstones.assoc("Barney")
