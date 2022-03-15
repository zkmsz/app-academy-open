# Is Palindrome

# Write a method is_palindrome(word) that takes in a string word
# and returns the true if the word is a palindrome, false otherwise.
# A palindrome is a word that is spelled the same forwards and backwards.
def is_palindrome(word)
  # word == word.reverse will do it with case sensativity, here is with a loop
  reverse_string = ""
  i = word.length - 1
  while i >= 0
    reverse_string << word[i]
    i -= 1
  end
  reverse_string == word
end

puts is_palindrome("racecar") # => true
puts is_palindrome("kayak") # => true
puts is_palindrome("bootcamp") # => false
