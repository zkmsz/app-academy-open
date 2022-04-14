# bi_prime?

# Write a method bi_prime?(num) that accepts a number as an arg and returns
# a boolean indicating whether or not the number is a bi-prime. A bi-prime
# is a positive integer that can be obtained by multiplying two prime numbers.

# For Example:

# 14 is a bi-prime because 2 * 7
# 22 is a bi-prime because 2 * 11
# 25 is a bi-prime because 5 * 5
# 24 is not a bi-prime because no two prime numbers have a product of 24
# # Examples
# bi_prime?(14)   # => true
# bi_prime?(22)   # => true
# bi_prime?(25)   # => true
# bi_prime?(94)   # => true
# bi_prime?(24)   # => false
# bi_prime?(64)   # => false
require "prime"

def bi_prime?(num)
  primes = Prime.each(num).to_a
  (0..primes.length - 1).each do |x|
    (0..primes.length - 1).each do |y|
      return true if primes[x] * primes[y] == num
    end
  end
  false
end
p bi_prime?(14) # => true
p bi_prime?(22) # => true
p bi_prime?(25) # => true
p bi_prime?(94) # => true
p bi_prime?(24) # => false
p bi_prime?(64) # => false
