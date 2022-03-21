def hipsterfy(word)
  vowels = /[aeiou]/
  return word if !word.match?(vowels)

  last_vowel = word.reverse!.index(vowels)
  word[last_vowel] = ""
  word.reverse
end

def vowel_counts(string)
  vowels = "aeiou"
  result = Hash.new(0)
  string.downcase.each_char { |c| result[c] += 1 if vowels.include?(c) }
  result
end

def caesar_cipher(string, num)
  alphabet = ("a".."z").to_a.join

  string.each_char.with_index do |c, idx|
    if !alphabet.index(c).nil?
      new_idx = (alphabet.index(c) + num) % 26
      new_letter = alphabet[new_idx]
      string[idx] = new_letter
    end
  end
  string
end
