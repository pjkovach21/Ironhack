class Heli
	attr_reader :wheel
	def initialize 
		@wheel = 3
		@noise = "DuDuDu"
	end
end


class Bike
	attr_reader :wheel
	def initialize 
		@wheel = 2
		@noise = "Tete"
	end
end


class Car
	attr_reader :wheel
	def initialize 
		@wheel = 4
		@noise = "Vroom"
	end
end


class WheelCounter
	def initialize
		@vehiclewheels = []
	end
	def add_car(rims)
		@vehiclewheels.push(rims)
	end
	def count ()
		total_wheels = 0
		@vehiclewheels.each do |vehicle|
			total_wheels += vehicle.wheel
		end
			total_wheels
	end
end

counter = WheelCounter.new
chop = Heli.new
car = Car.new
bike = Bike.new

counter.add_car(car)
counter.add_car(bike)
counter.add_car(chop)
puts counter.count

