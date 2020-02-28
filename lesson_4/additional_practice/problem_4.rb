# Pick out the minimum age from our current Munster family hash:

ages = { 
        "Herman" => 32, 
        "Lily" => 30, 
        "Grandpa" => 5843, 
        "Eddie" => 10, 
        "Marilyn" => 22, 
        "Spot" => 237 }

ages.values.sort[0]

min_age = 1/0.0
ages.each do |name, age | 
  unless age > min_age
    min_age = age
  end
end

puts min_age