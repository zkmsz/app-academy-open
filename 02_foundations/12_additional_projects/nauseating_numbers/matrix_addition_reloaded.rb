# matrix_addition_reloaded

# Write a method matrix_addition_reloaded that accepts any number of matrices
# as arguments. The method should return a new matrix representing the sum of
# the arguments. Matrix addition can only be performed on matrices of similar
# dimensions, so if all of the given matrices do not have the same "height"
#   and "width", then return nil.

# Examples

# matrix_a = [[2, 5], [4, 7]]
# matrix_b = [[9, 1], [3, 0]]
# matrix_c = [[-1, 0], [0, -1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]]
# matrix_e = [[0, 0], [12, 4], [6, 3]]

# p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
# p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
# p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
# p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil

def matrix_addition_reloaded(*matrices)
  return nil if matrices.map(&:length).uniq.length > 1
  result = Array.new(matrices[0].length) { Array.new(matrices[0][0].length, 0) }
  (0...matrices.length).each do |i|
    matrices[i].each.with_index do |subarr, j|
      subarr.each.with_index { |el, k| result[j][k] += el }
    end
  end
  result
end
