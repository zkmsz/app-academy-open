def my_reject(arr, &prc)
  result = []
  arr.each { |el| result << el if !prc.call(el) }
  result
end

def my_one?(arr, &prc)
  arr.select { |el| prc.call(el) }.length == 1
end

def hash_select(hash, &prc)
  result = {}
  hash.each { |k, v| prc.call(k, v) ? result[k] = v : next }
  result
end

def xor_select(arr, prc1, prc2)
  result = []
  arr.each { |el| [prc1.call(el), prc2.call(el)].one? ? result << el : next }
  result
end

def proc_count(value, arr)
  count = 0
  arr.each { |prc| count += 1 if prc.call(value) }
  count
end
