class Search < ActiveRecord::Base
    
  def search_coffees
    
    coffees = Coffee.all
    
    coffees = coffees.where(["title LIKE ?","%#{keywords}%"]) if keywords.present?
    coffees = coffees.where(["price >= ?", min_price]) if min_price.present?
    coffees = coffees.where(["price <= ?", max_price]) if max_price.present?
    
    return coffees
    
  end    
end