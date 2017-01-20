require 'byebug'




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

  def does_arr_win?(arr)
    if state[arr[0]] == "O" && state[arr[1]] == "O" && state[arr[2]] == "O"
      return true
    end
    if state[arr[0]] == "X" && state[arr[1]] == "X" && state[arr[2]] == "X"
      return true
    end
    return false
  end

  def is_game_over?
    win_rows = [[0, 1, 2],
                [3, 4, 5],
                [6, 7, 8],
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8],
                [0, 4, 8],
                [2, 4, 6]]
    win_rows.each do |row|
      return true if does_arr_win? row
    end
    return true unless @state.include? " "
  end
end





class Input
  @board

  def initialize(board)
    @board = board
  end

  def get_move(player)

    puts "CURRENT PLAYER:[#{player ? 'X' : 'O'}] -- Enter a move (0-8):"
    move = gets.chomp.to_i
    unless move >= 0 && move <= 8 && @board.state[move] == " "
      # Invalid move!
      puts "Invalid Move! Try again..."
      return get_move(player)
    end
    return move
  end # get_move
end # Input





board = Board.new
input = Input.new(board)

board.draw_board
first_player = true

# Each time through this loop is 1 turn
while true
  board.state[input.get_move(first_player)] = first_player ? "X" : "O"
  board.draw_board
  if board.is_game_over?
    puts "Player #{first_player ? "X" : "O"} wins!"
    exit
  end
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
