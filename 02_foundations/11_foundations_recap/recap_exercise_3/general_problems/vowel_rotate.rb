# vowel_rotate

# Write a method vowel_rotate(str) that accepts a string as an arg and
# returns the string where every vowel is replaced with the vowel that
# appears before it sequentially in the original string. The first vowel
# of the string should be replaced with the last vowel.

# # Examples
# vowel_rotate('computer')      # => "cempotur"
# vowel_rotate('oranges')       # => "erongas"
# vowel_rotate('headphones')    # => "heedphanos"
# vowel_rotate('bootcamp')      # => "baotcomp"
# vowel_rotate('awesome')       # => "ewasemo"

def vowel_rotate(str)
  vowels = "aeiou"
  consonant = Hash.new(0)
  str.each_char.with_index do |ch, i|
    !vowels.include?(ch) ? consonant[i] = ch : next
  end
  v_array = str.split("").select { |c| vowels.include?(c) }
  v_last = v_array.pop
  v_array.unshift(v_last)
  consonant.each { |k, v| v_array.insert(k, v) }
  v_array.join
end
