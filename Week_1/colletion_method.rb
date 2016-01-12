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

	#puts homes[1].city
### is there a better way for this?
	homes.each do |hm|
		puts hm.name + " in " + hm.city
		puts "Price: $" + hm.price.to_s + " a night"
	end

	cities = homes.map do |hm|
		hm.city
	end
	puts "Here is a list of cities"
	puts cities

	prices = homes.map do |hm|
		hm.price
	end

	total_price = prices.reduce(0) do |total_price, hm|
		total_price += hm
	end
puts "Average price"
puts total_price/prices.count

#####hahahaha i used the reduce!!!!!

homes.each_with_index do |hm, index|
	puts "home number #{index +1}: #{hm.name}"
end
### puts in array
pittsburgh_homes = homes.select do |hm|
	hm.city == "Pittsburgh"
end

puts "#{pittsburgh_homes[0].name}, #{pittsburgh_homes[0].city}"
## not ana rray
home_41 = homes.find do |hm|
	hm.price == 41
end

puts home_41.city

