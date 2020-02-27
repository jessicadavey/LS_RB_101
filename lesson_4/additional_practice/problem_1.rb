flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values 
# are the positions in the array.

flintstones.each_with_object({}) do | name, hash | 
    hash[name] = flintstones.index(name)
end


############

hash = {}
counter = 0

loop do
    break if counter == flintstones.size
    
    current_element = flintstones[counter]
    hash[current_element] = counter
    counter += 1
end

puts hash