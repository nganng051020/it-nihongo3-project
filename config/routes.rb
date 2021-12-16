Rails.application.routes.draw do
  resources :coffee_reviews
  root 'home#index'
  resources :searchs
  resources :coffees
  devise_for :users
  get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
