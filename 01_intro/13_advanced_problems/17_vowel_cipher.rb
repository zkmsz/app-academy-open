# Vowel Cipher

# Write a method vowel_cipher that takes in a string and returns a new
# string where every vowel becomes the next vowel in the alphabet.
def vowel_cipher(string)
  vowels = "aeiou"
  new_str = ""

  string.each_char do |c|
    new_char = ""
    if vowels.include?(c)
      new_char = vowels.index(c) + 1
      new_char -= vowels.length if new_char >= vowels.length
      new_str << vowels[new_char]
    else
      new_str << c
    end
  end
  new_str
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
