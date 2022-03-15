# First Half

# Write a method first_half(array) that takes in an array and returns a
# new array containing the first half of the elements in the array. If
# there is an odd number of elements, return the first half including
# the middle element.
def first_half(array)
  array[0..(array.size / 2.0 - 1).ceil]
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"]) # => ["a", "b", "c"]
