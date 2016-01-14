#each                 0         1        2           3           4
shoe_brands = [ "nike", "Reebok", "Puma", "Steve Madden", "uggs" ]

shoe_brands.each_with_index do | brand, i |
  puts "This brand is my No. #{i + 1} favorite: #{brand}"
end
# .find
favorite = shoe_brands.find do |brand|
	result = brand.length == 6
	result2 = brand.length == 4
	puts brand + " this is result2-> #{result}"

	#result #stops from test stopping"
	#hpw can i print result 2 or I can not
	result2 ##favorite is equal to this
end

puts "My fav brand is #{favorite} and i hate result2}"


### .each vs .map
upperbrands = []
shoe_brands.each do |brands|
	upper = brands.upcase

	upperbrands.push (upper)
end
puts upperbrands


#map 
upper_brands = shoe_brands.map do |brand |
	brand.upcase[0..1] #shortens the length NIkE > NI
end

puts upper_brands


#### How to use Reduce
# each way 
total_length = 0
shoe_brands.each do |brand|
	total_length += brand.length # += is x = x + y
end
puts total_length
puts total_length / shoe_brands.length

# .Reduce

tot_length = shoe_brands.reduce(0) do | tot_length, brand|
	tot_length += brand.length
end

puts tot_length
