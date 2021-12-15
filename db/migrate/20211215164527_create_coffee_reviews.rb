class CreateCoffeeReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :coffee_reviews do |t|
      t.integer :user_id
      t.integer :coffee_id
      t.text :review

      t.timestamps
    end
  end
end
