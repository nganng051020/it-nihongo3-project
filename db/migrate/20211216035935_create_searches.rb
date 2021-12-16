class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :min_price
      t.integer :max_price

      t.timestamps
    end
  end
end
