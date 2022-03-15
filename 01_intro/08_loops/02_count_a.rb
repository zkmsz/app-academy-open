# Count A

# Write a method count_a(word) that takes in a string word and
# returns the number of a's in the word. The method should count
# both lowercase (a) and uppercase (A)
def count_a(word)
  # word.downcase.count("a") is easiest, here is with an iterator
  total = 0
  word.each_char { |c| total += 1 if c.downcase == "a" }
  total
end

puts count_a("application") # => 2
puts count_a("bike") # => 0
puts count_a("Arthur") # => 1
puts count_a("Aardvark") # => 3
