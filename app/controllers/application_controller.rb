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

    def check_cart_cookie
        cookie_cart_id = cookies["cart_id"]
        
        true if cookie_cart_id == session[:cart_id].to_s
    end

    def setup_new_cart
        new_cart = Cart.create 
        new_cart.user = current_user if current_user
        new_cart.save
        session[:cart_id] = new_cart.id
        cookies[:cart_id] = new_cart.id 
    end
    
end
