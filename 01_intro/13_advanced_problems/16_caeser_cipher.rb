# Caesar Cipher

# Write a method caesar_cipher that takes in a string and a number. The
# method should return a new string where every character of the original
# is shifted num characters in the alphabet.
# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  letters = "abcdefghijklmnopqrstuvwxyz"
  new_str = ""
  str.each_char do |c|
    new_char = letters.index(c) + num
    new_char > letters.length ? new_char -= letters.length : new_char
    new_str << letters[new_char]
  end
  new_str
end

puts caesar_cipher("apple", 1) #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4) #=> "difve"
