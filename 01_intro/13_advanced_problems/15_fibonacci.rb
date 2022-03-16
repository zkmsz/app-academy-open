# Fibonacci

# The fibonacci sequence is a sequence of numbers whose first and second
# elements are 1. To generate further elements of the sequence we take
# the sum of the previous two elements. For example the first 6 fibonacci
# numbers are 1, 1, 2, 3, 5, 8. Write a method fibonacci that takes in
# a number length and returns the fibonacci sequence up to the given length.
def fibonacci(length)
  result = []

  result << 1 if length >= 1
  result << 1 if length >= 2

  result << result[-2] + result[-1] while result.length < length
  result
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
