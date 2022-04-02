class Player
  def get_move
    print "enter a position wth coordinates separated with a space like `4 7`"
    gets.chomp.split(" ").map(&:to_i)
  end
end
