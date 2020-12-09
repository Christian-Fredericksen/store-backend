class ApplicationController < ActionController::API
    def current_user 
        current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def current_cart
        current_cart ||= Cart.find(session[:cart_id]) if session[:cart_id]
    end

    def current_cart_total
        item_prices = current_cart.items.map { |i| i.price }
        item_prices.reduce(0) { |sum, price| sum + price }
    end
    
end
