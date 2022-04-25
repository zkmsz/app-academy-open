# mutual_factors

# Write a method mutual_factors that accepts any amount of numbers as arguments.
# The method should return an array containing all of the common divisors shared
# among the arguments. For example, the common divisors of 50 and 30 are
# [1, 2, 5, 10]. You can assume that all of the arguments are positive integers.

# Examples

# p mutual_factors(50, 30)            # [1, 2, 5, 10]
# p mutual_factors(50, 30, 45, 105)   # [1, 5]
# p mutual_factors(8, 4)              # [1, 2, 4]
# p mutual_factors(8, 4, 10)          # [1, 2]
# p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
# p mutual_factors(12, 24, 64)        # [1, 2, 4]
# p mutual_factors(22, 44)            # [1, 2, 11, 22]
# p mutual_factors(22, 44, 11)        # [1, 11]
# p mutual_factors(7)                 # [1, 7]
# p mutual_factors(7, 9)              # [1]

def mutual_factors(*nums)
  divisors = Hash.new(0)
  nums.each { |num| (1..num).each { |i| divisors[i] += 1 if (num % i).zero? } }
  divisors.select { |_, v| v == nums.count }.keys
end
