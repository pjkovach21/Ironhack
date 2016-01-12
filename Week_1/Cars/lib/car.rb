class Car
	attr_reader :color :make
	
	def initialize(color, make, noise)
		@color = color
		@make = make
		@noise = noise
	end
	def rev
		@noise
	end
end


