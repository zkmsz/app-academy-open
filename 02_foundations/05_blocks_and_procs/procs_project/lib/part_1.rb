def my_map(arr, &proc)
  result = []
  arr.each { |el| result << proc.call(el) }
  result
end

def my_select(arr, &proc)
  result = []
  arr.each { |el| result << el if proc.call(el) == true }
  result
end

def my_count(arr, &proc)
  result = 0
  arr.each { |el| result += 1 if proc.call(el) == true }
  result
end

def my_any?(arr, &proc)
  arr.each { |el| return true if proc.call(el) == true }
  false
end

def my_all?(arr, &proc)
  arr.each { |el| return false if proc.call(el) == false }
  true
end

def my_none?(arr, &proc)
  arr.each { |el| return false if proc.call(el) == true }
  true
end
