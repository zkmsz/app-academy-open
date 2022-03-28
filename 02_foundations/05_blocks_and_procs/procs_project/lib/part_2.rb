def reverser(str, &proc)
  proc.call(str.reverse)
end

def word_changer(sentence, &proc)
  sentence.split(" ").map(&proc).join(" ")
end

def greater_proc_value(num, proc1, proc2)
  proc1.call(num) > proc2.call(num) ? proc1.call(num) : proc2.call(num)
end

def and_selector(arr, proc1, proc2)
  result = []
  arr.each do |el|
    result << el if proc1.call(el) == true && proc2.call(el) == true
  end
  result
end

def alternating_mapper(arr, proc1, proc2)
  result = []
  arr.each_with_index do |el, idx|
    idx.even? ? result << proc1.call(el) : result << proc2.call(el)
  end
  result
end
