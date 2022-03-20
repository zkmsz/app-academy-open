# Write a method, my_rotate!(array, amt), that accepts an array and a number
# as args. The method should mutate the array by rotating the elements 'amt'
# number of times.  When given a positive 'amt', a single rotation will rotate
# left, causing the first element to move to the last index. When given a
# negative 'amt', a single rotation will rotate right, causing the last
# element to move to the first index The method should return the given array.
# Do not use the built-in Array#rotate

# Note: this method must MUTATE the input array. This means that the object_id
# of the input array should be identical to the object_id of the returned array.
# The exact object_ids you get back don't matter. We just want the ids to be
# the same before and after calling your method.

def right_rotate(array)
  first = array[0]
  (0...array.length).each { |idx| array[idx] = array[idx + 1] }
  array[-1] = first
  array
end

def left_rotate(array)
  last = array[-1]
  (array.length - 1).downto(1).each { |idx| array[idx] = array[idx - 1] }
  array[0] = last
  array
end

def my_rotate!(array, amt)
  if amt < 0
    amt.abs.times { left_rotate(array) }
  else
    amt.times { right_rotate(array) }
  end
  array
end

array1 = ["a", "b", "c", "d"]
p array1.object_id # => 70354216023780
p result1 = my_rotate!(array1, 2)
p result1 # => ["c", "d", "a", "b"]
p result1.object_id # => 70354216023780

array2 = ["NOMAD", "SOHO", "TRIBECA"]
p array2.object_id # => 70354216019660
p result2 = my_rotate!(array2, 1)
p result2 # => ["SOHO", "TRIBECA", "NOMAD"]
p result2.object_id # => 70354216019660

array3 = ["a", "b", "c", "d"]
p array3.object_id # => 70354216016500
result3 = my_rotate!(array3, -3)
p result3 # => ["b", "c", "d", "a"]
p result3.object_id # => 70354216016500
