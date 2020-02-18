# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# ...remove everything starting from "house".
# Review the String#slice! documentation, and use that method to make the return value 
# "Few things in life are as important as ". But leave the advice variable as 
# "house training your pet dinosaur.".

new_str = advice.slice!("Few things in life are as important as ")

p advice
p new_str

# If we had used String#slice, the return value would be the same, but 
# the 'advice' string would not have been shortened.