class AddTotcalToSandwhich < ActiveRecord::Migration
  def change
    add_column :sandwhiches, :totalcalories, :integer, default: 0
  end
end
