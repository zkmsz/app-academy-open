# Most Vowels

# Write a method most_vowels that takes in a sentence string and returns
# the word of the sentence that contains the most vowels.
def most_vowels(sentence)
  vowels = "aeiou"
  most_idx = nil
  words = Hash.new(0)

  sentence.split.each { |word| words[word] = word.count(vowels) }
  words.each { |k, v| v > words[most_idx] ? most_idx = k : next }
  most_idx
end

print most_vowels("what a wonderful life") #=> "wonderful"
