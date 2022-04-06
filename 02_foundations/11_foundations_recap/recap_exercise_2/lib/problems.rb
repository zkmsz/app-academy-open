# Write a method, least_common_multiple, that takes in two numbers and returns
# the smallest number that is a mutiple
# of both of the given numbers
#
# Original Answer
# def least_common_multiple(num1, num2)
#   multiple = num1
#   fact = 1

#   loop do
#     multiple = num1 * fact
#     fact += 1
#     return multiple if (multiple % num2).zero?
#   end
# end

def least_common_multiple(num1, num2)
  (1..num1 * num2).each { |i| return i if (i % num1).zero? && (i % num2).zero? }
end

# Write a method, most_frequent_bigram, that takes in a string and returns the
# two adjacent letters that appear the most in the string.
def most_frequent_bigram(str)
  result = Hash.new(0)
  (0..str.length - 1).each { |start| result[str.slice(start, 2)] += 1 }
  result.max_by { |_, v| v }[0]
end

class Hash
  # Write a method, Hash#inverse, that returns a new hash where the key-value
  # pairs are swapped
  def inverse
    result = {}
    each_pair { |k, v| result[v] = k }
    result
  end
end

class Array
  # Write a method, Array#pair_sum_count, that takes in a target number returns
  # the number of pairs of elements that sum to the given target
  def pair_sum_count(num)
    result = 0
    each_with_index do |first, idx1|
      each_with_index do |last, idx2|
        result += 1 if idx2 > idx1 && first + last == num
      end
    end
    result
  end

  # Write a method, Array#bubble_sort, that takes in an optional proc argument.
  # When given a proc, the method should sort the array according to the proc.
  # When no proc is given, the method should sort the array in increasing order.
  #
  # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
  # two parameters, which represents the two elements in the array being compared.
  # If the block returns 1, it means that the second element passed to the block
  # should go before the first (i.e. switch the elements). If the block returns -1,
  # it means the first element passed to the block should go before the second
  # (i.e. do not switch them). If the block returns 0 it implies that
  # it does not matter which element goes first (i.e. do nothing).
  #
  # This should remind you of the spaceship operator! Convenient :)

  def bubble_sort(&prc)
    prc ||= Proc.new { |a, b| a <=> b }
    sorted = false

    while !sorted
      sorted = true
      (0...length - 1).each do |i|
        if prc.call(self[i], self[i + 1]) == 1
          self[i], self[i + 1] = self[i + 1], self[i]
          sorted = false
        end
      end
    end
    self
  end
end
