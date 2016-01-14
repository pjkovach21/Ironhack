class room
	attr_reader :pick
	def initialize(pick)
		@pick = pick
	end
	def welcome
		puts "welcome to room one, the best room around"
		puts "Pick wisely, because the sun never rises hear"
		user_input = gets.chomp
			if user_input == "W"
				####move to next room
				#if wrong move to back to first room
			end
	end
end



class room2
	attr_reader :pick
	def initialize(pick)
		@pick = pick
	end
		def welcome
		puts "welcome to room 3, the worst room around"
		puts "Pick smartley, remember mary goes round"
		user_input = gets.chomp
			if user_input == "S"
				####move to next room
				#if wrong move to back to first room
		end
	end
end


class room3
	attr_reader :pick
	def choice(pick)
		@pick = pick
	end
	def welcome
		puts "welcome to room 3, the worst room around"
		puts "Pick smartley, remember mary goes round"
		user_input = gets.chomp
			if user_input == "E"
				####move to next room
				#if wrong move to back to first room
		end
	end
end


class room4
	attr_reader :pick
	def choice(pick)
		@pick = pick
	end
	def welcome
		puts "One Step away, remember Never eat sour worms"
		puts "Pick smartley, remember mary goes round"
		user_input = gets.chomp
			if user_input == "N"
				####move to next room
				#if wrong move to back to first room
		end
	end
end