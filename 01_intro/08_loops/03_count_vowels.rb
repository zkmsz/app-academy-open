# Count Vowels

# Write a method, count_vowels(word), that takes in a string word
# and returns the number of vowels in the word. Vowels are the
# letters a, e, i, o, u.
def count_vowels(word)
  # word.count("aeiou") is easiest, here it is with an iterator
  vowels = "aeiou"
  total = 0
  word.each_char { |c| total += 1 if vowels.include?(c) }
  total
end

puts count_vowels("bootcamp") # => 3
puts count_vowels("apple") # => 2
puts count_vowels("pizza") # => 2
