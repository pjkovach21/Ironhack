class Sandwhich < ActiveRecord::Base
	has_many :sandwich_ingredients
	has_many :ingredients, through: :sandwich_ingredients, after_add: :totalcal

	private
	def totalcal(ingredients)
		self.totalcalories+=ingredients.calories
		self.save

	end
end



