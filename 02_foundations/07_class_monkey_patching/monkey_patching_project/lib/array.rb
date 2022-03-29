# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if empty?
    max - min
  end

  def average
    return nil if empty?
    sum / count.to_f
  end

  def median
    return nil if empty?
    return sort.at(count / 2) if count.odd?
    return (sort.at(count / 2) + sort.at(count / 2 - 1)) / 2.0 if count.even?
  end

  def counts
    result = Hash.new(0)
    each { |el| result[el] += 1 }
    result
  end

  def my_count(value)
    count = 0
    each { |el| count += 1 if el == value }
    count
  end

  def my_index(value)
    each_with_index { |el, idx| return idx if el == value }
    nil
  end

  def my_uniq
    result = []
    each { |el| result.include?(el) ? next : result << el }
    result
  end

  def my_transpose
    result = Array.new(count) { [] }
    count.times { |i| count.times { |j| result[j] << self[i][j] } }
    result
  end
end
