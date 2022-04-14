# vigenere_cipher

# A Caesar cipher takes a word and encrypts it by offsetting each letter
# in the word by a fixed number, called the key. Given a key of 3, for
#   example: a -> d, p -> s, and y -> b.

# A Vigenere Cipher is a Caesar cipher, but instead of a single key, a
# sequence of keys is used. For example, if we encrypt "bananasinpajamas"
# with the key sequence 1, 2, 3, then the result would be "ccqbpdtkqqcmbodt":

# # Message:  b a n a n a s i n p a j a m a s
# # Keys:     1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# # Result:   c c q b p d t k q q c m b o d t

# Write a method vigenere_cipher(message, keys) that accepts a string and a
# key-sequence as args, returning the encrypted message. Assume that the
# message consists of only lowercase alphabetic characters.

# # Examples
# vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
# vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
# vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
# vigenere_cipher("zebra", [3, 0])            # => "ceerd"
# vigenere_cipher("yawn", [5, 1])             # => "dbbo"
def vigenere_cipher(message, keys)
  alpha = ("a".."z").to_a
  result = ""
  message.each_char do |ch|
    if keys.first.zero?
      result << ch
    else
      new_idx = (alpha.index(ch) + keys.first) % 26
      result << alpha[new_idx]
    end
    keys.rotate!(1)
  end
  result
end
