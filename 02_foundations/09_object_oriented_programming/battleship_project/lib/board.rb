class Board
  attr_reader :size

  def self.print_grid(grid)
    grid.each { |row| puts row.map(&:to_s).join(" ") }
  end

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N) }
    @size = n * n
  end

  def [](position)
    row, col = position
    @grid[row][col]
  end

  def []=(position, value)
    row, col = position
    @grid[row][col] = value
  end

  def num_ships
    @grid.flatten.count { |el| el == :S }
  end

  def attack(position)
    if self[position] == :S
      self[position] = :H
      puts "you sunk my battleship"
      true
    else
      self[position] = :X
      false
    end
  end

  def place_random_ships
    ships = (@size * 0.25).to_i
    while ships > 0
      position = [rand(Math.sqrt(@size)), rand(Math.sqrt(@size))]
      if self[position] != :S
        self[position] = :S
        ships -= 1
      end
    end
  end

  def hidden_ships_grid
    @grid.map { |row| row.map { |el| el == :S ? :N : el } }
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(hidden_ships_grid)
  end
end
