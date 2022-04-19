# lucas_sequence

# The Lucas Sequence is a sequence of numbers. The first number of the sequence
# is 2. The second number of the Lucas Sequence is 1. To generate the next
# number of the sequence, we add up the previous two numbers. For example, the
# first six numbers of the sequence are: 2, 1, 3, 4, 7, 11, ...

# Write a method lucasSequence that accepts a number representing a length as
# an arg. The method should return an array containing the Lucas Sequence up
# to the given length. Solve this recursively.
# Examples
# lucas_sequence(0)   # => []
# lucas_sequence(1)   # => [2]
# lucas_sequence(2)   # => [2, 1]
# lucas_sequence(3)   # => [2, 1, 3]
# lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
# lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]
#
# Had to get help on this, my brain doesn't work recursively.
def lucas_sequence(n)
  return [] if n == 0
  return [2] if n == 1
  return 2, 1 if n == 2
  sequence = lucas_sequence(n - 1)
  next_seq = sequence[-1] + sequence[-2]
  sequence << next_seq
  sequence
end
