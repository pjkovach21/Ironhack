require_relative("lib/King.rb")
require_relative("lib/rook.rb")
require_relative("lib/Knight.rb")
require_relative("lib/Bishop.rb")
require_relative("lib/Queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/game.rb")


black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")

black_rook_right = Rook.new(8, 8, "black")
black_rook_left = Rook.new(8 , 1, "black")

white_rook_right = Rook.new(1,8, "white")
white_rook_left = Rook.new(1,1, "white")

black_knight_right = Knight.new(7,8, "black")
black_knight_left = Knight.new(2,8, "black")

white_knight_right = Knight.new(7,1, "white")
white_knight_left = Knight.new(2,1, "white")

black_bishop_right =Bishop.new(8,3, "black")
black_bishop_left = Bishop.new(8,6, "black")

white_bishop_right = Bishop.new(1,6, "white")
white_bishop_left = Bishop.new(1,3, "white")

black_queen = Queen.new(8,4, "black")
white_queen = Queen.new(1,4, "white")


w1 = Pawn.new(1,2,"white")
w2 = Pawn.new(2,2,"white")
w3 = Pawn.new(3,2,"white")
w4 = Pawn.new(4,2,"white")
w5 = Pawn.new(5,2,"white")
w6 = Pawn.new(6,2,"white")
w7 = Pawn.new(7,2,"white")
w8 = Pawn.new(8,2,"white")

b1 = Pawn.new(1,7,"black")
b2 = Pawn.new(2,7,"black")
b3 = Pawn.new(3,7,"black")
b4 = Pawn.new(4,7,"black")
b5 = Pawn.new(5,7,"black")
b6 = Pawn.new(6,7,"black")
b7 = Pawn.new(7,7,"black")
b8 = Pawn.new(8,7,"black")

board = [
	0,
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[]
]

board[1][1] = white_rook_left
board[2][1] = white_knight_left
board[3][1] = white_bishop_left
board[4][1] = white_queen
board[5][1] = white_king
board[6][1] = white_bishop_right
board[7][1] = white_knight_right
board[8][1] = white_rook_right


board[1][8] = black_rook_left
board[2][8] = black_knight_left
board[3][8] = black_bishop_left
board[4][8] = black_queen
board[5][8] = black_king
board[6][8] = black_bishop_right
board[7][8] = black_knight_right
board[8][8] = black_rook_left

board[1][2] = w1
board[2][2] = w2
board[3][2] = w3
board[4][2] = w4
board[5][2] = w5
board[6][2] = w6
board[7][2] = w7
board[8][2] = w8

board[1][7] = b1
board[2][7] = b2
board[3][7] = b3
board[4][7] = b4
board[5][7] = b5
board[6][7] = b6
board[7][7] = b7
board[8][7] = b8

puts board.inspect

my_game = Game.new(board)

=begin
puts " King good moves"
p white_king.move?(6,2)
p white_king.move?(5,2)
p white_king.move?(4,1)

puts " King bad moves"
p white_king.move?(7,2)
p white_king.move?(1,5)


puts "rook good moves"
p black_rook_left.move?(1,8)
p black_rook_left.move?(8,4)

puts "rook bad moves"

p black_rook_left.move?(4,2)
p black_rook_left.move?(7,8)


puts "Knight good moves"
p white_knight_left.move?(1,3)
p white_knight_left.move?(3,3)

puts "knight bad moves"
p white_knight_left.move?(3,4)
p white_knight_left.move?(4,1)

puts"Bishop good moves"
p white_bishop_left.move?(3,1)
p white_bishop_left.move?(3,5)

puts "bishop bad moves"
p white_bishop_left.move?(3,6)
p white_bishop_left.move?(7,8)

puts "Queen good moves"
p white_queen.move?(4,4)
p white_queen.move?(5,8)

puts "Queen bad moves"
p white_queen.move?(5,5)
p white_queen.move?(3,3)


puts "test white pawn"
puts "White pawn starting on not 2"
p p1.move?(1,4)
p p1.move?(1,5)

puts "white pawn starting on 2"
p p2.move?(2,4)
p p2.move?(2,3)
p p2.move?(2,5)

puts "test black pawn adfgfdagafd"
puts "test from start point true"
puts "should be true"
p p3.move?(8,6)
p p3.move?(8,5)

puts "should be false"
p p3.move?(7,8)
p p3.move?(8,4)

puts "test black pawn dsfdfadafgfdag"
puts "test from not start point 5,5"
puts "should be true"
p p4.move?(5,4)


puts "should be false"
p p4.move?(5,5)
p p4.move?(5,3)
p p4.move?(6,4)
=end



