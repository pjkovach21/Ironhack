class SandwichIngredient < ActiveRecord::Base
	belongs_to :sandwhich
	belongs_to :ingredient
end
