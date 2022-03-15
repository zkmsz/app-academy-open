# Is Div By Five

# Write a method is_div_by_5(number) that takes in a number and
# returns the boolean true if the given number is divisible by 5, false
# otherwise
def is_div_by_5(number)
  number % 5 == 0
end

puts is_div_by_5(10) # => true
puts is_div_by_5(40) # => true
puts is_div_by_5(42) # => false
puts is_div_by_5(8) # => false
