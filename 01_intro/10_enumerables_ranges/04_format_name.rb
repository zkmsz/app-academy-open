# Format Name

# Write a method format_name that takes in a name string and returns
# the name properly capitalized.
# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"
def format_name(str)
  str.split(" ").each(&:capitalize!).join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
