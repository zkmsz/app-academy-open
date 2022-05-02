# uncompress

# Write a method uncompress that accepts a string as an argument. The string
# will be formatted so every letter is followed by a number. The method should
# return an "uncompressed" version of the string where every letter is repeated
# multiple times given based on the number that appears directly after the
# letter.

# Examples

# uncompress('a2b4c1') # 'aabbbbc'
# uncompress('b1o2t1') # 'boot'
# uncompress('x3y1x2z4') # 'xxxyxxzzzz'

def uncompress(string)
  result = ""
  string.each_char.with_index do |ch, i|
    result << string[i - 1] * ch.to_i if ch.to_i > 0
  end
  result
end
