# squarocol?

# Write a method squarocol? that accepts a 2-dimensional array as an argument.
# The method should return a boolean indicating whether or not any row or
# column is completely filled with the same element. You may assume that the
# 2-dimensional array has "square" dimensions, meaning it's height is the
# same as it's width.

# Examples

# p squarocol?([[:a, :x, :d], [:b, :x, :e], [:c, :x, :f]]) # true
# p squarocol?([[:x, :y, :x], [:x, :z, :x], [:o, :o, :o]]) # true
# p squarocol?([[:o, :x, :o], [:x, :o, :x], [:o, :x, :o]]) # false
# p squarocol?([[1, 2, 2, 7], [1, 6, 6, 7], [0, 5, 2, 7], [4, 2, 9, 7]]) # true
# p squarocol?([[1, 2, 2, 7], [1, 6, 6, 0], [0, 5, 2, 7], [4, 2, 9, 7]]) # false

def squarocol?(arr)
  arr.each { |subarr| return true if subarr.uniq.length == 1 }
  columns = Array.new(arr.length) { Array.new(arr.length) }
  arr.each.with_index do |subarr, i|
    subarr.each.with_index { |el, j| columns[j][i] = el }
  end
  columns.each { |subarr| return true if subarr.uniq.length == 1 }
  false
end
