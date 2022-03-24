# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
def largest_prime_factor(num)
  require "prime"
  primes = []
  Prime.each(num) { |prime| primes << prime }
  primes.reverse_each { |i| return i if num % i == 0 }
end

def unique_chars?(string)
  letters = string.split("")
  letters == letters.uniq
end

def dupe_indices(array)
  result = {}
  array.each_with_index do |char, idx|
    result.key?(char) ? result[char].push(idx) : result[char] = [idx]
  end
  result.select { |_, v| v.count > 1 }
end

def ana_array(arr1, arr2)
  bubble_sort(arr1) == bubble_sort(arr2)
end

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
