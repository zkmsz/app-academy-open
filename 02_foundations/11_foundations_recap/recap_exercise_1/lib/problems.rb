# Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words

# in the same order as the original array.
#
# Example:
#
# all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]
def all_vowel_pairs(words)
  vowels = ["a", "e", "i", "o", "u"]
  result = []
  words.each_index do |i|
    words.each_index do |j|
      if j > i && vowels.all? { |ch| (words[i] + words[j]).include?(ch) }
        result << "#{words[i]} #{words[j]}"
      end
    end
  end
  result
end

# Write a method, composite?, that takes in a number and returns a boolean indicating if the number
# has factors besides 1 and itself
#
# Example:
#
# composite?(9)     # => true
# composite?(13)    # => false
def composite?(num)
  (2...num).each { |i| return true if (num % i).zero? }
  false
end

# A bigram is a string containing two letters.
# Write a method, find_bigrams, that takes in a string and an array of bigrams.
# The method should return an array containing all bigrams found in the string.
# The found bigrams should be returned in the the order they appear in the original array.
#
# Examples:
#
# find_bigrams("the theater is empty", ["cy", "em", "ty", "ea", "oo"])  # => ["em", "ty", "ea"]
# find_bigrams("to the moon and back", ["ck", "oo", "ha", "at"])        # => ["ck", "oo"]
#
# Original Answer
# def find_bigrams(str, bigrams)
#   result = []
#   bigrams.each.with_index { |el, idx| result << bigrams[idx] if str.index(el) }
#   result
# end
#
def find_bigrams(str, bigrams)
  bigrams.select { |bigram| str.include?(bigram) }
end

class Hash
  # Write a method, Hash#my_select, that takes in an optional proc argument
  # The method should return a new hash containing the key-value pairs that return
  # true when passed into the proc.
  # If no proc is given, then return a new hash containing the pairs where the
  # key is equal to the value.
  #
  # Examples:
  #
  # hash_1 = {x: 7, y: 1, z: 8}
  # hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
  #
  # hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
  # hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
  # hash_2.my_select                            # => {4=>4}
  #
  # Original Answer
  # def my_select(&prc)
  #   result = {}
  #   prc ||= Proc.new { |k, v| k == v }
  #   each { |el| result[el[0]] = el[1] if prc.call(el) == true }
  #   result
  # end
  #
  def my_select(&prc)
    result = {}
    prc ||= Proc.new { |k, v| k == v }
    each { |k, v| result[k] = v if prc.call(k, v) }
    result
  end
end

class String
  # Write a method, String#substrings, that takes in a optional length argument
  # The method should return an array of the substrings that have the given length.
  # If no length is given, return all substrings.
  #
  # Examples:
  #
  # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
  # "cats".substrings(2)  # => ["ca", "at", "ts"]
  #
  # Original Answer
  # def substrings(length = nil)
  #   result = []
  #   if length.nil?
  #     (0...self.length).each do |first|
  #       (first...self.length).each { |last| result << self[first..last] }
  #     end
  #   else
  #     while self.length > length - 1
  #       result << slice(0..length - 1)
  #       slice!(0, 1)
  #     end
  #   end
  #   result
  # end
  #
  def substrings(length = nil)
    result = []
    (0...self.length).each do |first|
      (first...self.length).each { |last| result << self[first..last] }
    end
    length.nil? ? result : result.select { |sub| sub.length == length }
  end

  # Write a method, String#caesar_cipher, that takes in an a number.
  # The method should return a new string where each char of the original string is shifted
  # the given number of times in the alphabet.
  #
  # Examples:
  #
  # "apple".caesar_cipher(1)    #=> "bqqmf"
  # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
  # "zebra".caesar_cipher(4)    #=> "difve"
  def caesar_cipher(num)
    alphabet = ("a".."z").to_a
    result = ""
    each_char do |c|
      new_idx = (alphabet.index(c) + num) % 26
      result << alphabet[new_idx]
    end
    result
  end
end
