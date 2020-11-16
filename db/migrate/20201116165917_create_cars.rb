class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :title
      t.string :model
      t.string :brand
      t.integer :price
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
