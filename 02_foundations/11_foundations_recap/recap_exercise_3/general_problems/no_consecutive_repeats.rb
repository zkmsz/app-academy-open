# no_consecutive_repeats?

# Write a method no_consecutive_repeats?(arr) that accepts an array as an arg.
# The method should return true if an element never appears consecutively in
# the array; it should return false otherwise.

# # Examples
# no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# no_consecutive_repeats?(['x'])                              # => true
def no_consecutive_repeats?(arr)
  (0...arr.length).each { |i| return false if arr[i] == arr[i + 1] }
  true
end
