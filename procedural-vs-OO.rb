board = Array.new(9, " ") # Creates an array with 9 elements filled with " "
 
def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end
 
def turn_count(board)
  board.count{|token| token == "X" || token == "O"}
end
 
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
<<<<<<< HEAD
end
=======
end

class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
 
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
 
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
 
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end



>>>>>>> 35e1ca40e088a80ffa11ce30a848c557c2348a80
