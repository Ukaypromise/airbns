class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.string :condition
      t.string :category
      t.string :name
      t.decimal :price, precision: 5, scale: 2, default: 0.00

      t.timestamps
    end
  end
end
