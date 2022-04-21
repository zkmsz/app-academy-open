# anti_prime?

# Write a method anti_prime? that accepts a number as an argument. The method
# should return true if the given number has more divisors than all positive
# numbers less than the given number. For example, 24 is an anti-prime because
# it has more divisors than any positive number less than 24. Math Fact: Numbers
# that meet this criteria are also known as highly composite numbers.

# Examples

# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false

def divisors(n)
  divisors = []
  (1..n).each { |i| divisors << i if (n % i).zero? }
  divisors.count
end

def anti_prime?(n)
  counts = Hash.new(0)
  (1..n).each { |i| counts[i] = divisors(i) }
  counts[n] == counts.values.max
end
