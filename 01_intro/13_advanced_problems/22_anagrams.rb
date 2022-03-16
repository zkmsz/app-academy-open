# Anagrams

# Write a method anagrams? that takes in two words and returns a boolean
# indicating whether or not the words are anagrams. Anagrams are words that
# contain the same characters but not necessarily in the same order.
# Solve this without using .sort
def anagrams?(word1, word2)
  letters = Hash.new(0)
  word1.each_char { |char| letters[char] += 1 }
  word2.each_char { |char| letters[char] -= 1 }
  return false if letters.value?(-1) || letters.value?(1)
  true
end

puts anagrams?("cat", "act") #=> true
puts anagrams?("restful", "fluster") #=> true
puts anagrams?("cat", "dog") #=> false
puts anagrams?("boot", "bootcamp") #=> false
