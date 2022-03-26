def select_even_nums(array)
  array.select(&:even?)
end

def reject_puppies(array)
  array.reject { |el| el["age"] <= 2 }
end

def count_positive_subarrays(array)
  array.count { |subarr| subarr.sum > 0 }
end

def aba_translate(string)
  vowels = "aeiou"
  result = ""
  string.each_char do |c|
    vowels.include?(c) ? result << c + "b" + c : result << c
  end
  result
end

def aba_array(array)
  array.map { |word| aba_translate(word) }
end
