require_relative "code"

class Mastermind
  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(instance)
    puts "Exact matches: #{instance.num_exact_matches(@secret_code)}"
    puts "Near matches : #{instance.num_near_matches(@secret_code)}"
  end

  def ask_user_for_guess
    print "Enter a code: "
    code = Code.from_string(gets.chomp)
    print_matches(code)
    code == @secret_code
  end
end
