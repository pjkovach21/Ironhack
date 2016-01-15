require_relative("lib/King.rb")
require_relative("lib/rook.rb")
require_relative("lib/Knight.rb")
require_relative("lib/Bishop.rb")
require_relative("lib/Queen.rb")


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