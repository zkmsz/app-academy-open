def proper_factors(n)
  result = []
  (1...n).each { |i| result << i if (n % i).zero? }
  result
end

def aliquot_sum(n)
  proper_factors(n).sum
end

def perfect_number?(n)
  n == aliquot_sum(n)
end

def ideal_numbers(n)
  result = []
  i = 1
  while result.length < n
    result << i if perfect_number?(i)
    i += 1
  end
  result
end
