# Same Char Collapse

# Write a method same_char_collapse that takes in a string and returns a
# collapsed version of the string. To collapse the string, we repeatedly
# delete 2 adjacent characters that are the same until there are no such
# adjacent characters. If there are multiple pairs that can be collapsed,
# delete the leftmost pair. For example, we take the following steps to
# collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy
def delete_duplicates(string, char)
  double_char = char * 2
  start_index = string.index(double_char)
  !start_index.nil? ? string.slice!(start_index, 2) : string
  string
end

def same_char_collapse(str)
  str.each_char { |char| delete_duplicates(str, char) }
  str
end

puts same_char_collapse("zzzxaaxy") #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy

puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
