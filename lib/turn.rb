def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  valid_index?(index) && space_empty?(board, index)
end

def space_empty?(board, index)
  board[index] == " " || board[index] == "" || board[index] == nil
end

def valid_index?(index)
  (0..9).include?(index)
end

def move(board, index, player = "X")
  board[index] = player
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
