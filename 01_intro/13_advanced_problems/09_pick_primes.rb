# Pick Primes

# Write a method pick_primes that takes in an array of numbers and returns
# a new array containing only the prime numbers.
def prime?(num)
  return false if num < 2
  (2...num).to_a.each { |i| return false if num % i == 0 }
  true
end

def pick_primes(numbers)
  numbers.select { |num| prime?(num) }
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts
