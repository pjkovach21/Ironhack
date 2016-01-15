class Pawn
	def initialize(pos_x, pos_y, color)
		@pos_x = pos_x
		@pos_y = pos_y
		@color = color
	end
	def move?(dst_x, dst_y)
		dx = (dst_x - @pos_x)
		dy = (dst_y - @pos_y)
		
		if @color == "white"
			if (@pos_y == 2) && 
				(dx == 0 && dy <= 2)
				true
			elsif (@pos_y != 2) &&
				(dx == 0 && dy == 1)
				true
			else
				false
			end	
		elsif @color == "black"	
			if (@pos_y == 7) &&
				(dx == 0 && dy >= -2)
				true
			elsif (@pos_y != 7) &&
				(dx == 0 && dy == -1)
				true
			else
				false
			end
		end
	end
end





#pawn
#up or down
#has it moved 