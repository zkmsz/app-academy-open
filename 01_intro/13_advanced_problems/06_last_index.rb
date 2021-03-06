# Last Index

# Write a method last_index that takes in a string and a character.
# The method should return the last index where the character can be
# found in the string.
def last_index(str, char)
  last_idx = nil
  str.each_char.with_index { |c, idx| last_idx = idx if c == char }
  last_idx
end

puts last_index("abca", "a") #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o") #=> 5
puts last_index("programming", "m") #=> 7
