class AddColumnToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :fav, :string
  end
end
