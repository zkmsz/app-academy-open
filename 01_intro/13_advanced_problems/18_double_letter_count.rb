# Double Letter Count

# Write a method that takes in a string and returns the number of
# times that the same letter repeats twice in a row.
def double_letter_count(string)
  count = 0
  string.each_char.with_index do |c, idx|
    count += 1 if idx > 0 && c == string[idx - 1]
  end
  count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1
