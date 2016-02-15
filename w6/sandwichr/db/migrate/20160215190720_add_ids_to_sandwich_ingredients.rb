class AddIdsToSandwichIngredients < ActiveRecord::Migration
  def change
    add_column :sandwich_ingredients, :sandwhich_id, :integer
    add_column :sandwich_ingredients, :ingredient_id, :integer
  end
end
