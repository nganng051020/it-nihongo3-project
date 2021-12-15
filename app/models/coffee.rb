class Coffee < ApplicationRecord
    has_one_attached :image 
    # validates :title, :description, :price, :restaurant => true
    validates :title, :restaurant, length: { minimum: 2 }
    validates :description, length: { minimum: 10 }
    validates :price, numericality: { only_integer: true }
end


  
