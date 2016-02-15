class Sandwhich < ActiveRecord::Base
	has_many :sandwich_ingredients
	has_many :ingredients, through: :sandwich_ingredients, after_add: :totalcalories

	# def totalcalories
	# 	self.totalcalories
	# 	self.ingredients.calories.each do |cal|
	# 		self.totalcalories += cal
	# 	end
	# end
end



