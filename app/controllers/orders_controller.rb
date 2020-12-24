class OrdersController < ApplicationController
  def create
      
    current_cart = Cart.all
    order_items = current_cart.last.items
    a = order_items.each { |key, value| puts "k: #{key}, v: #{value}" }
    order = a
    order.save
        
        
    render json: {
      order: {
        id:  current_cart,
        items: a,
      } 
    }
      
  end
end