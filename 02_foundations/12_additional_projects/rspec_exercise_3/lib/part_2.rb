def element_count(arr)
  result = Hash.new(0)
  arr.each { |el| result[el] += 1 }
  result
end

def char_replace!(str, hash)
  str.each_char.with_index { |ch, i| hash[ch] ? str[i] = hash[ch] : next }
  str
end

def product_inject(arr)
  arr.inject(:*)
end
