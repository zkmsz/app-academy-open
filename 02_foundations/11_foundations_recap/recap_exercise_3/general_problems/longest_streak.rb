# longest_streak

# Write a method longest_streak(str) that accepts a string as an arg.
# The method should return the longest streak of consecutive characters
# in the string. If there are any ties, return the streak that occurs
# later in the string.

# # Examples
# longest_streak('a')           # => 'a'
# longest_streak('accccbbb')    # => 'cccc'
# longest_streak('aaaxyyyyyzz') # => 'yyyyy
# longest_streak('aaabbb')      # => 'bbb'
# longest_streak('abc')         # => 'c'
def longest_streak(str)
  counts = Hash.new(0)
  streaks = []
  str.each_char.with_index do |ch, i|
    if i > 0 && ch[i] == ch[i - 1]
      counts[ch] += 1
    else
      counts[ch] = 1
    end
  end
  counts.each { |k, v| streaks << k * v }
  streaks.reverse.max_by(&:length)
end
