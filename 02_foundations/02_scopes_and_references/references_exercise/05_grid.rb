# Write a method, grid(n, m), that accepts two numbers as args.
# The method should return a 2D array with n rows and m columns (this means
# that there are n subarrays, each of length m).

def grid(n, m)
  result = []
  n.times { result << Array.new(m) }
  result
end

result1 = grid(2, 3)
p result1 # => [[nil, nil, nil], [nil, nil, nil]]
result1[0][0] = "X"
p result1 # => [["X", nil, nil], [nil, nil, nil]]

result2 = grid(4, 2)
p result2 # => [[nil, nil], [nil, nil], [nil, nil], [nil, nil]]
result2[0][0] = "Q"
p result2 # => [["Q", nil], [nil, nil], [nil, nil], [nil, nil]]
