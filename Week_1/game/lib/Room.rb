class Room
	attr_reader :exit
	def initialize(discription, exit)
		@discription = discription
		@exit = exit
	end
	def display_discription
		puts @discription
	end
end