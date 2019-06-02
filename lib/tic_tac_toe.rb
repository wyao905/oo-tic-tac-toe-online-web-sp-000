class TicTacToe
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input)
    index = user_input.to_i - 1
  end
  
  def move(input_to_index, token = "X")
    @board[index] = token
  end
  
  def position_taken?
    if @board[input_to_index] == "X" || @board[input_to_index] == "O"
      return true
    else
      return false
    end
  end
  
  def valid_move?
    if input_to_index.between?(0, 8) && !position_taken?
      return true
    else
      return false
    end
  end
  
  def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index)
      player = current_player(board)
      move(board, index, player)
      display_board(board)
    else
      turn(board)
    end
  end
end