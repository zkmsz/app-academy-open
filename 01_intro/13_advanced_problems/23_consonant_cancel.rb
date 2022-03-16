# Consonant Cancel

# Write a method consonant_cancel that takes in a sentence and returns a
# new sentence where every word begins with it's first vowel.

def consonant_cancel(sentence)
  vowels = "aeiou"
  array = sentence.split
  array.each { |word| word.slice!(0, 1) while !vowels.include?(word[0]) }
  array.join(" ")
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"

puts consonant_cancel("writing code is challenging")
#=> "iting ode is allenging"
