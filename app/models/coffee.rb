class Coffee < ApplicationRecord
    has_one_attached :image 
    has_many :coffee_review, -> { order "created_at DESC"}
    # validates :title, :description, :price, :restaurant => true
    validates :title, :restaurant, length: { minimum: 2 }
    validates :price, numericality: { only_integer: true }
end


  
