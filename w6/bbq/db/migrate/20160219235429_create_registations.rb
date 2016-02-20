class CreateRegistations < ActiveRecord::Migration
  def change
    create_table :registations do |t|
      t.integer :user_id
      t.integer :barbecue_id

      t.timestamps null: false
    end
  end
end
