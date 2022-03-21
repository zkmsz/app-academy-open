def palindrome?(string)
  reversed = ""
  (string.length - 1).downto(0) { |i| reversed << string[i] }
  string == reversed
end

def substrings(string)
  result = []
  i = 0
  while i < string.length
    j = 1
    while j <= string.length - i
      result << string[i, j]
      j += 1
    end
    i += 1
  end
  result
end

def palindrome_substrings(string)
  strings = substrings(string)
  strings.select { |str| palindrome?(str) if str.length > 1 }
end
