# prime_factorization

# The Fundamental Theorem of Arithmetic states that every positive integer
# is either a prime or can be represented as a product of prime numbers.

# Write a method prime_factorization(num) that accepts a number and returns
# an array representing the prime factorization of the given number. This
# means that the array should contain only prime numbers that multiply together

# to the given num. The array returned should contain numbers in ascending
# order. Do this recursively.

# # Examples
# prime_factorization(12)     # => [2, 2, 3]
# prime_factorization(24)     # => [2, 2, 2, 3]
# prime_factorization(25)     # => [5, 5]
# prime_factorization(60)     # => [2, 2, 3, 5]
# prime_factorization(7)      # => [7]
# prime_factorization(11)     # => [11]
# prime_factorization(2017)   # => [2017]
#
# Had to get help on this, my brain doesn't work recursively.
def prime_factorization(n)
  (2...n).each do |fac|
    if (n % fac).zero?
      next_fac = n / fac
      return *prime_factorization(fac), *prime_factorization(next_fac)
    end
  end
  [n]
end
