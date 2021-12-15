class CreateCoffees < ActiveRecord::Migration[6.0]
  def change
    create_table :coffees do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :restaurant

      t.timestamps
    end
  end
end
