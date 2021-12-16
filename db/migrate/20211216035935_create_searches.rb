class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.decimal :min_price
      t.decimal :maxprice

      t.timestamps
    end
  end
end
