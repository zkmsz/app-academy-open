# squaragonal?

# Write a method squaragonal? that accepts 2-dimensional array as an argument.
# The method should return a boolean indicating whether or not the array contains
# all of the same element across either of its diagonals. You may assume that the
# 2-dimensional array has "square" dimensions, meaning it's height is the same as
# it's width.

# Examples

# p squaragonal?([
#     [:x, :y, :o],
#     [:x, :x, :x],
#     [:o, :o, :x],
# ]) # true

# p squaragonal?([
#     [:x, :y, :o],
#     [:x, :o, :x],
#     [:o, :o, :x],
# ]) # true

# p squaragonal?([
#     [1, 2, 2, 7],
#     [1, 1, 6, 7],
#     [0, 5, 1, 7],
#     [4, 2, 9, 1],
# ]) # true

# p squaragonal?([
#     [1, 2, 2, 5],
#     [1, 6, 5, 0],
#     [0, 2, 2, 7],
#     [5, 2, 9, 7],
# ]) # false

def squaragonal?(arr)
  diagonals = Array.new(2) { Array.new }
  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      diagonals.first.push arr[i][j] if i == j
      diagonals.last.push arr.reverse[i][j] if i == j
    end
  end
  diagonals.each { |subarr| return true if subarr.uniq.length == 1 }
  false
end
