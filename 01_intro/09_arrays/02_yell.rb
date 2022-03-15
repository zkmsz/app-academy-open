# Yell

# Write a method yell(words) that takes in an array of words and returns a
# new array where every word from the original array has an exclamation point
# after it.
def yell(words)
  # words.map {|word| word + "!"} here is a version without map
  new_arr = []
  words.each { |word| new_arr << word + "!" }
  new_arr
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]
