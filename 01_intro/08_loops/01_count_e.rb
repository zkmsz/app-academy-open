# Count E

# Write a method count_e(word) that takes in a string word and
# returns the number of e's in the word
def count_e(word)
  # word.count("e") is the easier way, here is with an iterator
  total = 0
  word.each_char { |c| total += 1 if c == "e" }
  total
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3
