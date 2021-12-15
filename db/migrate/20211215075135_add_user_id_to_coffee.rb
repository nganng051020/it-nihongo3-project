class AddUserIdToCoffee < ActiveRecord::Migration[6.0]
  def change
    add_column :coffees, :user_id, :integer
  end
end
