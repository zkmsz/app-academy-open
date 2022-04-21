# perfect_square?

# Write a method perfect_square? that accepts a number as an argument. The method
# should return a boolean indicating whether or not the argument is a perfect
# square. A perfect square is a number that is the product of some number
# multiplied by itself. For example, since 64 = 8 * 8 and 144 = 12 * 12, 64
# and 144 are perfect squares; 35 is not a perfect square.

# Examples

# p perfect_square?(1)     # true
# p perfect_square?(4)     # true
# p perfect_square?(64)    # true
# p perfect_square?(100)   # true
# p perfect_square?(169)   # true
# p perfect_square?(2)     # false
# p perfect_square?(40)    # false
# p perfect_square?(32)    # false
# p perfect_square?(50)    # false

def perfect_square?(n)
  Integer.sqrt(n) * Integer.sqrt(n) == n
end
