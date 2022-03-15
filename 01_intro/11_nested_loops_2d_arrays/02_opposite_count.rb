# Opposite Count

# Write a method opposite_count that takes in an array of unique numbers.
# The method should return the number of pairs of elements that sum to 0.
def opposite_count(nums)
  count = 0
  nums.each do |num|
    i = 0
    while i < nums.size
      count += 1 if num + nums[i] == 0
      i += 1
    end
  end
  count / 2
end

puts opposite_count([2, 5, 11, -5, -2, 7]) # => 2
puts opposite_count([21, -23, 24 - 12, 23]) # => 1
