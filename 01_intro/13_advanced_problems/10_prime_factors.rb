# Prime Factors

# Write a method prime_factors that takes in a number and returns an
# array containing all of the prime factors of the given number.
def prime?(num)
  return false if num < 2
  (2...num).to_a.each { |i| return false if num % i == 0 }
  true
end

def prime_factors(num)
  primes = (2..num).to_a.select! { |i| prime?(i) }
  primes.select { |i| num % i == 0 }
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
