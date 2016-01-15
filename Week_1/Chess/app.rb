require_relative("lib/King.rb")
require_relative("lib/rook.rb")


black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")

black_rook_right = Rook.new(8, 8, "black")
black_rook_left = Rook.new(8 , 1, "black")

white_rook_right = Rook.new(1,8, "white")
white_rook_left = Rook.new(1,1, "white")


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
