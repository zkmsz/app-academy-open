# pascals_triangle

# Pascal's triangle is a 2-dimensional array with the shape of a pyramid. The
# top of the pyramid is the number 1. To generate further levels of the pyramid,
# every element is the sum of the element above and to the left with the element
# above and to the right. Nonexisting elements are treated as 0 when calculating
# the sum. For example, here are the first 5 levels of Pascal's triangle:

#       1
#      1 1
#     1 2 1
#    1 3 3 1
#   1 4 6 4 1

# Write a method pascals_triangle that accepts a positive number, n, as an
# argument and returns a 2-dimensional array representing the first n levels of
# pascal's triangle.

# Examples

# p pascals_triangle(5)
# # [
# #     [1],
# #     [1, 1],
# #     [1, 2, 1],
# #     [1, 3, 3, 1],
# #     [1, 4, 6, 4, 1]
# # ]

# p pascals_triangle(7)
# # [
# #     [1],
# #     [1, 1],
# #     [1, 2, 1],
# #     [1, 3, 3, 1],
# #     [1, 4, 6, 4, 1],
# #     [1, 5, 10, 10, 5, 1],
# #     [1, 6, 15, 20, 15, 6, 1]
# # ]
#

# Got stuck on this one, had to look at the answer which is below. Creating
# a helper method would have helped where I was stuck.
#
def adjacent_sums(arr)
  sums = []
  (0...arr.length - 1).each { |i| sums << arr[i] + arr[i + 1] }
  sums
end

def pascals_triangle(n)
  triangle = [[1]]
  while triangle.length < n
    level_above = triangle.last
    next_level = [1]
    next_level += adjacent_sums(level_above)
    next_level << 1
    triangle << next_level
  end
  triangle
end
