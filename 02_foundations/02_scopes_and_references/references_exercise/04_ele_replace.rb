# Write a method, ele_replace!(array, hash), that accepts an array and a
# hash as args. The method should mutate the given array by replacing elements
# with their corresponding values in the hash.
# The method should return the given array.
#

# Note: this method must MUTATE the input array. This means that the object_id
# of the input array should be identical to the object_id of the returned array.
# The exact object_ids you get back don't matter. We just want the ids to be the
# same before and after calling your method.

# Original Answer
# def ele_replace!(array, hash)
#   hash.each do |k, v|
#     idx = array.find_index(k)
#     while !idx.nil?
#       array[idx] = v
#       idx = array.find_index(k)
#     end
#   end
#   array
# end

# Refactored Answer
def ele_replace!(array, hash)
  array.map! { |el| hash.key?(el) ? hash[el] : el }
end

array1 = [4, 2, 0, 2]
p array1.object_id # => 70119569670520
result1 = ele_replace!(array1, { 2 => "two", 0 => "zero", 5 => "five" })
p result1 # => [4, "two", "zero", "two"]
p result1.object_id # => 70119569670520

array2 = ["Matthias", "Simcha", "Mashu", "David"]
p array2.object_id # => 70119569668160
result2 = ele_replace!(array2, "Matthias" => "J", "Mashu" => "D")
p result2 # => ["J", "Simcha", "D", "David"]
p result2.object_id # => 70119569668160
