# no_dupes?

# Write a method no_dupes?(arr) that accepts an array as an arg and returns
# an new array containing the elements that were not repeated in the array.
# # Examples
# no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# no_dupes?([true, true, true])            # => []
def no_dupes?(arr)
  result = []
  arr.each { |el| result << el if arr.count(el) == 1 }
  result
end
