class String
  # String#select
  # Extend the string class by defining a String#select method that accepts a block.
  # The method should return a new string containing characters of the original
  # string that return true when passed into the block. If no block is passed,
  # then return the empty string. Do not use the built-in Array#select in
  # your solution.
  # # Examples
  # "app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
  # "HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
  # "HELLOworld".select          # => ""
  def select(&prc)
    result = ""
    (0...length).each { |i| result << self[i] if prc.call(self[i]) } if prc
    result
  end

  # String#map!
  # Extend the string class by defining a String#map! method that accepts a
  # block. The method should modify the existing string by replacing every
  # character with the result of calling the block, passing in the original
  # character and it's index.
  # Do not use the built-in Array#map or Array#map! in your solution.
  # # Examples
  # word_1 = "Lovelace"
  # word_1.map! do |ch|
  #     if ch == 'e'
  #         '3'
  #     elsif ch == 'a'
  #         '4'
  #     else
  #         ch
  #     end
  # end
  # p word_1        # => "Lov3l4c3"
  # word_2 = "Dijkstra"
  # word_2.map! do |ch, i|
  #     if i.even?
  #         ch.upcase
  #     else
  #         ch.downcase
  #     end
  # end
  # p word_2        # => "DiJkStRa"
  def map!(&prc)
    each_char.with_index { |c, i| self[i] = prc.call(c, i) }
    self
  end
end
