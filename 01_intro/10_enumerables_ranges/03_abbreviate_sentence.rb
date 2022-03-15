# Abbreviate Sentence

# Write a method abbreviate_sentence that takes in a sentence string and
# returns a new sentence where every word longer than 4 characters has all
# of it's vowels removed.
def abbreviate_sentence(sent)
  arr =
    sent.split(" ").map { |word| word.length > 4 ? word.delete("aeiou") : word }
  arr.join(" ")
end

puts abbreviate_sentence("follow the yellow brick road")
# => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life") # => "what a wndrfl life"
