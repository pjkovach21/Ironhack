class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end
end

homes = [ 
	Home.new("Nizar's place", "San Juan",2,42),
	Home.new("Fernando's place","Seville", 5,47),
	Home.new("Josh's place", "Pittsburgh", 3, 41),
	Home.new( "Gonza's place", "Malaga", 2, 45),
	Home.new("Ariel's house", "San Juan", 4, 49) 
	]

puts "How would you like to see your options?"
	puts "Press 1 for Highest to lowest"
	puts "Press 2 for Lowest to Highest"
	puts "Press 3 to see homes with capacity Lowest to Highest"
	puts "Press 4 your city name to show homes from that city"
	puts "Press 5 to name your own price by imputing your price and price average"

	user_input = gets.chomp.to_i
	if user_input == 1
		def home_sorting_low(homes)
			sorted_home = homes.sort do |place|
				place.price
			end
		end
		home_sorting_low(homes).each do |home|
			puts " #{home.name}\n price: #{home.price} per night"
	end
	elsif user_input == 2
		def home_sorting_high(homes)
			sorted_home = homes.sort do |place|
				-place.price
			end
		end
		home_sorting_high(homes).each do |home|
			puts " #{home.name}\n price: #{home.price} per night"
	end
	elsif user_input == 3
		def cap(homes)
			sorted_home = homes.sort do |cap1, cap2|
				cap1.capacity<=>cap2.capacity
			end
		end
		cap(homes).each do |home|
			puts " #{home.name}\n capacity: #{home.capacity} per night"
	end
	elsif user_input == 4
		puts "enter city"
		cityy = gets.chomp
		city_homes = homes.select do |home|
			 home.city.downcase == cityy.downcase
				# phome.name
	  end
			
		
	end
city_homes.each do |home|
				puts "#{home.name}, #{home.price}" 
			end