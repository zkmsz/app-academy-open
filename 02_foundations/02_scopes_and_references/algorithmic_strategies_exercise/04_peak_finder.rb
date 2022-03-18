# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left
# and right neighbor. The first or last element of the array is considered
# a "peak" if it is greater than it's one neighbor.

# My original solution
#
# def peak_finder(arr)
#   result = []
#   result << arr[0] if arr[0] > arr[1]
#   (1...arr.length - 1).each do |idx|
#     result << arr[idx] if arr[idx] > arr[idx - 1] && arr[idx] > arr[idx + 1]
#   end
#   result << arr[-1] if arr[-1] > arr[-2]
#   result
# end

# Refactored solution after watching solution walkthrough
def peak_finder(arr)
  result = []
  arr.each_with_index do |num, i|
    left = arr[i - 1]
    right = arr[i + 1]

    if i == 0 && num > right
      result << num
    elsif i == arr.length - 1 && num > left
      result << num
    elsif num > left && num > right
      result << num
    end
  end
  result
end

p peak_finder([1, 3, 5, 4]) # => [5]
p peak_finder([4, 2, 3, 6, 10]) # => [4, 10]
p peak_finder([4, 2, 11, 6, 10]) # => [4, 11, 10]
p peak_finder([1, 3]) # => [3]
p peak_finder([3, 1]) # => [3]
