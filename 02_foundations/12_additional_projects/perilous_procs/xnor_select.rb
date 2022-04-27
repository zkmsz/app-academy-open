# xnor_select

# Write a method xnor_select that accepts an array and two procs as arguments.
# The method should return a new array containing elements of the original
# array that either return true for both procs or return false for both procs.

# Examples

# is_even = Proc.new { |n| n % 2 == 0 }
# is_odd = Proc.new { |n| n % 2 != 0 }
# is_positive = Proc.new { |n| n > 0 }
# p xnor_select([8, 3, -4, -5], is_even, is_positive)         # [8, -5]
# p xnor_select([-7, -13, 12, 5, -10], is_even, is_positive)  # [-7, -13, 12]
# p xnor_select([-7, -13, 12, 5, -10], is_odd, is_positive)   # [5, -10]

def xnor_select(array, prc1, prc2)
  array.select do |el|
    prc1.call(el) && prc2.call(el) || !prc1.call(el) && !prc2.call(el)
  end
end
