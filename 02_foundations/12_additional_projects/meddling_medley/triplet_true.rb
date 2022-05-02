# triplet_true?

# Write a method triplet_true? that accepts a string as an argument and returns
# a boolean indicating whether or not the string contains three of the same
# character consecutively.

# Examples

# p triplet_true?('caaabb')        # true
# p triplet_true?('terrrrrible')   # true
# p triplet_true?('runninggg')     # true
# p triplet_true?('bootcamp')      # false
# p triplet_true?('e')             # false

def triplet_true?(string)
  (0...string.length).each do |i|
    return true if [string[i], string[i + 1], string[i + 2]].all?(string[i])
  end
  false
end

p triplet_true?("caaabb") # true
p triplet_true?("terrrrrible") # true
p triplet_true?("runninggg") # true
p triplet_true?("bootcamp") # false
p triplet_true?("e") # false
