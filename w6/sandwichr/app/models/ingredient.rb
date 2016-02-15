class Ingredient < ActiveRecord::Base
	has_many :sandwich_ingredients
	has_many :sandwhiches, through: :sandwich_ingredients

end
