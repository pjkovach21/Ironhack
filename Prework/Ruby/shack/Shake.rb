=begin
	
rescue Exception => e
	
end
##/class Milkshake
	def initialize(flav, price)
		@flav = flav
		@price = price
	end
end

milkshake = Milkshake.new ("vanilla",7)
=end

class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

banana = Ingredient.new("banana", 2)
##


class Milkshake
	def initialize
		@base_price = 3
		@ingredients = []
	end
	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end
end

nizars_milkshake = Milkshake.new
coco_chips = Ingredient.new("coco chips", 1)
nizars_milkshake.add_ingredient(coco_chips)
nizars_milkshake.add_ingredient(banana)

def price_of_milkshake
	total_price_of_milkshake = @base_price
	@ingredients.each do |ingredient|
		total_price_of_milkshake += ingredient.price
	end
	total_price_of_milkshake

end
puts nizars_milkshake.price_of_milkshake

