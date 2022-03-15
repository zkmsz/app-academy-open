# Sum Nums

# Write a method sum_nums(max) that takes in a number max and returns
# the sum of all numbers from 1 up to and including max.
def sum_nums(max)
  # (1..max).sum is easiest, here it is with a loop
  total = 0
  i = 1
  while i <= max
    total += i
    i += 1
  end
  total
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15
