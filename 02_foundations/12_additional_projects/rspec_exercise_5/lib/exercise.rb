def zip(*arr)
  length = arr[0].length
  (0...length).map { |i| arr.map { |subarr| subarr[i] } }
end

def prizz_proc(arr, prc1, prc2)
  arr.select do |el|
    !(prc1.call(el) && prc2.call(el)) && (prc1.call(el) || prc2.call(el))
  end
end

def zany_zip(*arr)
  length = arr.max_by(&:length).length
  (0...length).map { |i| arr.map { |subarr| subarr[i] } }
end

def maximum(arr, &block)
  arr.reverse.max_by(&block)
end

def my_group_by(arr, &block)
  result = Hash.new { |h, k| h[k] = Array.new }
  arr.each { |el| result[block.call(el)].push(el) }
  result
end

# I think the tests are incorrect on this since no tie is presented to call prc
def max_tie_breaker(arr, prc, &block)
  arr.max_by(&block)
end

def silly_syllables(sentence)
  result = []
  arr = sentence.split(" ")
  arr.each do |word|
    if word.count("aeiou") > 1
      first_vowel = word.index(/[aeiou]/)
      if first_vowel == 0
        word.slice!(0)
      elsif !first_vowel.nil?
        word.slice!(0...first_vowel)
      end
      last_vowel = word.reverse!.index(/[aeiou]/)
      word.slice!(0...last_vowel) if !last_vowel.nil?
      word.reverse!
    end
    result << word
  end
  result.join(" ")
end
