# Write a method, scalar_multiple!(array, multiplier), that accepts an
# array and a number as args. The method should mutate the given array by
# multiplying all of the elements by the multiplier. The method should
# return the given array.

#
# Note: this method must MUTATE the input array. This means that the
# object_id of the input array should be identical to the object_id of the

# returned array. The exact object_ids you get back don't matter. We just
# want the ids to be the same before and after calling your method.

def scalar_multiple!(array, multiplier)
  (0..array.length - 1).each { |i| array[i] *= multiplier }
  array
end

array1 = [7, 0, 4]
p array1.object_id # => 70326264380840
result1 = scalar_multiple!(array1, 3)
p result1 # => [21, 0, 12]
p result1.object_id # => 70326264380840

array2 = [90, 30, 4, 12]
p array2.object_id # => 70326264378100
result2 = scalar_multiple!(array2, 0.5)
p result2 # => [45.0, 15.0, 2.0, 6.0]
p result2.object_id # => 70326264378100
