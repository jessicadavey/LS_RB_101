# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

# def factors(number)
#   factors = []

#   number.times do |x|
#     factors.unshift(number / (x + 1)) if number % (x + 1) == 0
#   end

#   factors
# end


def factors(number)
  factors = []
  divisor = number

  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  factors
end

p factors(24)

# number % divisor == 0 checks for numbers that divide evenly into the original
# number (i.e., factors)

# the second to last line of the method is the (explicit) return value