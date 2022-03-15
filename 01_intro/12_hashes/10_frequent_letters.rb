# Frequent Letters

# Write a method frequent_letters that takes in a string and returns an
# array containing the characters that appeared more than twice in the string.
def frequent_letters(string)
  letters = Hash.new(0)
  result = []

  string.each_char { |c| letters[c] += 1 }
  letters.each { |k, v| result << k if v > 2 }
  result
end

print frequent_letters("mississippi") #=> ["i", "s"]
puts
print frequent_letters("bootcamp") #=> []
puts
