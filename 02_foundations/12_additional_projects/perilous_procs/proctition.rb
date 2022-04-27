# proctition

# Write a method proctition that accepts an array and a block as arguments. The
# method should return a new array where the elements that return true when
# given to the block come before all of the elements that return false when
# given to the block. This means that the new array has two partitions; the
# order among elements in the same partition should be the same as their
# relative order in the input array.

# Examples

# p proctition([4, -5, 7, -10, -2, 1, 3]) { |el| el > 0 }
# # [4, 7, 1, 3, -5, -10, -2]

# p proctition([7, 8, 3, 6, 10]) { |el| el.even? }
# # [8, 6, 10, 7, 3]

# p proctition(['cat','boot', 'dog', 'bug', 'boat']) { |s| s[0] == 'b' }
# # ["boot", "bug", "boat", "cat", "dog"]

def proctition(array, &block)
  true_results = []
  false_results = []
  array.each { |el| block.call(el) ? true_results << el : false_results << el }
  true_results + false_results
end
