class AddDescriptionAndLocationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :description, :text
    add_column :users, :location, :string
  end
end
