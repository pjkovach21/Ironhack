class Game
	def initialize
		@rooms = []
		@current_room = 0
	end

	def add_room(room)
		@rooms.push(room)
	end

	def play
		user_input = ""
		while user_input != @rooms[@current_room].exit
			@rooms[@current_room].display_discription
			user_input = gets.chomp
			
		end
		@current_room += 1
		if @current_room != @rooms.length
			play
		else
			puts "you won the game"
		end
	end
end