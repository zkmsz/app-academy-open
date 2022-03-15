# Pig Latin Word

# Write a method pig_latin_word that takes in a word string and
# translates the word into pig latin.
# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first
#   vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  vowels = ["a", "e", "i", "o", "u"]
  i = 0
  suffix = ""
  loop do
    if vowels.include?(word[i])
      break
    else
      suffix << word[i]
      i += 1
    end
  end
  if suffix.size > 0
    word.slice!(0, suffix.size)
    word + suffix + "ay"
  else
    word + "yay"
  end
end

puts pig_latin_word("apple") # => "appleyay"
puts pig_latin_word("eat") # => "eatyay"
puts pig_latin_word("banana") # => "ananabay"
puts pig_latin_word("trash") # => "ashtray"
