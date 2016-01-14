class Dungeon
	attr_reader :pick
	def welcome
		puts "You are in the dungeon, pick N, S, E, or W  to escape"
		puts "Choose Wisely, or you will have to pick again"
		user_input = gets.chomp
			if user_input == "W"
				####move to next room
				#if wrong move to back to first room
			end
	end
end