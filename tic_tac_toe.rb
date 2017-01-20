class Board
  attr_accessor :state

  def initialize
    @state = [" ", " ", " ",
              " ", " ", " ",
              " ", " ", " "]
  end

  def draw_board
    puts " #{state[0]} | #{state[1]} | #{state[2]} "
    puts "-----------"
    puts " #{state[3]} | #{state[4]} | #{state[5]} "
    puts "-----------"
    puts " #{state[6]} | #{state[7]} | #{state[8]} "
  end

end

class Input

  def get_move

    puts "Enter a move (0-8):"
    move = gets.chomp.to_i
    unless move >= 0 && move <= 8
      # Invalid move!
      puts "Invalid Move! Try again..."
      return get_move

    end

    return move

  end # get_move

end # Input

board = Board.new
input = Input.new

board.draw_board
first_player = true

# Each time through this loop is 1 turn
while true
  board.state[input.get_move] = first_player ? "X" : "O"
  board.draw_board
  first_player = !first_player
end

# puts "Initial Board"
# board.draw_board
#
# puts "First Move"
# board.state[1] = "X"
# board.draw_board
#
# puts "Several moves later"
# board.state[5] = "O"
# board.state[6] = "X"
# board.state[8] = "O"
# board.draw_board
