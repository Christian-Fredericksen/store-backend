class OrdersController < ApplicationController
  def create
        
    if check_cart_cookie
      order = Order.new
      order.cart = current_cart
      order.save
      setup_new_cart
    end
    
    render json: {
      cart: {
        id: current_cart ? current_cart.id : "",
        items: current_cart ? current_cart.items : [],
        total: current_cart ?  current_cart_total : 0
      }
    }

  end
end
