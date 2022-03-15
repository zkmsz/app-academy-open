# Doubler

# Write a method doubler(numbers) that takes an array of numbers and returns a
# new array where every element of the original array is multiplied by 2.
def doubler(numbers)
  # numbers.map { |i| i * 2 } here is a solution without map
  new_arr = []
  numbers.each { |i| new_arr << i * 2 }
  new_arr
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8]) # => [14, 2, 16]
