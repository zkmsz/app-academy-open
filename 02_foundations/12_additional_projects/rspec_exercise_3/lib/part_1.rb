def is_prime?(n)
  return false if n < 2
  (2...n).each { |i| return false if (n % i).zero? }
  true
end

def nth_prime(n)
  primes = []
  i = 2
  while primes.length < n
    primes << i if is_prime?(i)
    i += 1
  end
  primes[n - 1]
end

def prime_range(min, max)
  primes = [2]
  i = 3
  while primes.max < max
    primes << i if is_prime?(i)
    i += 1
  end
  primes.select { |prime| prime.between?(min, max) }
end
