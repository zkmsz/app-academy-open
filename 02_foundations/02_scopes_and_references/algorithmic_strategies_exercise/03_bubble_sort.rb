# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the
# elements in increasing order. The method should return the array.
# Do not use the built-in Array#sort

def sorted?(arr)
  (0...arr.length - 1).each { |i| return false if arr[i] > arr[i + 1] }
  true
end

def bubble_sort(arr)
  while !sorted?(arr)
    (0...arr.length - 1).each do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    end
  end
  arr
end

p bubble_sort([2, 8, 5, 2, 6]) # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3]) # => [1, 2, 3, 7, 8, 10]
