Rails.application.routes.draw do
  post '/users', to: 'users#create'
  delete '/logout', to: 'sessions#logout'
  post '/login', to: 'sessions#create'
  get '/items', to: 'items#index'
  
  post '/carts', to: 'carts#add_item_to_cart'
  post '/orders', to: 'orders#create'

  delete '/carts/:cart_id', to: 'carts#remove_item_from_cart'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
