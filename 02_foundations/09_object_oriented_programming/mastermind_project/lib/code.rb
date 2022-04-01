class Code
  attr_reader :pegs

  POSSIBLE_PEGS = { "R" => :red, "G" => :green, "B" => :blue, "Y" => :yellow }

  def self.valid_pegs?(ch_arr)
    ch_arr.all? { |ch| POSSIBLE_PEGS.include?(ch.upcase) }
  end

  def self.random(number)
    pegs = []
    number.times { pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(pegs)
  end

  def self.from_string(chars)
    Code.new(chars.split(""))
  end

  def initialize(ch_arr)
    if Code.valid_pegs?(ch_arr)
      @pegs = ch_arr.map(&:upcase)
    else
      raise "invalid pegs"
    end
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    exact_matches = 0
    guess.length.times { |i| exact_matches += 1 if guess[i] == @pegs[i] }
    exact_matches
  end

  def num_near_matches(guess)
    num_near_matches = 0
    counts = Hash.new(0)
    unmatched = []

    @pegs.each { |ch| counts[ch] += 1 }

    guess.pegs.each.with_index do |ch, i|
      ch == pegs[i] ? counts[ch] -= 1 : unmatched << ch
    end

    unmatched.each do |ch|
      if counts[ch] > 0
        num_near_matches += 1
        counts[ch] -= 1
      end
    end
    num_near_matches
  end

  def ==(other)
    @pegs == other.pegs
  end
end
