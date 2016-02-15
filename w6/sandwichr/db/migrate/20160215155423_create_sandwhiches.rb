class CreateSandwhiches < ActiveRecord::Migration
  def change
    create_table :sandwhiches do |t|
      t.string :name
      t.string :bread_type

      t.timestamps null: false
    end
  end
end
