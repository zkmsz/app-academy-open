def partition(array, num)
  result = []
  result << array.select { |i| i < num }
  result << array.select { |i| i >= num }
  result
end

def merge(hash1, hash2)
  result = {}
  hash1.each { |k, v| result[k] = v }
  hash2.each { |k, v| result[k] = v }
  result
end

def censor(sentence, censored_words)
  words = sentence.split
  words.map do |word|
    word.gsub!(/[aeiouAEIOU]/, "*") if censored_words.include?(word.downcase)
  end
  words.join(" ")
end

def power_of_two?(num)
  while num != 1
    return false if num.odd?
    num /= 2
  end
  true
end
