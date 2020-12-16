class ApplicationController < ActionController::API
    include ActionController::Cookies
    def current_user 
        current_user ||= User.find(session[:user_id]) if session[:user_id]
    end 
    def current_cart
        current_cart = Cart.find(session[:cart_id]) if session[:cart_id] 
    end
    def check_session_cookie
        cookie_session_id = cookies.encrypted[:_session_id]["session_id"]
        cookie_user_id = cookies.encrypted[:_session_id]["user_id"]
        true if cookie_session_id == session.id && cookie_user_id == current_user.id   
    end
    def check_cart_cookie
        cookie_cart_id = cookies["cart_id"]
        true if cookie_cart_id == session[:cart_id].to_s
    end
    def current_cart_total
     # byebug
       if params[:cart_id] = ""
        setup_new_cart
       else 
      current_cart = Cart.find(params[:cart_id])
      item_prices = current_cart.items.map { |i| i.price }
      item_prices.reduce(0) { |sum, price| sum + price }
       end 
    end
    def setup_new_cart
            new_cart = Cart.create 
            new_cart.user = current_user if current_user
            new_cart.save
            session[:cart_id] = new_cart.id
            cookies[:cart_id] = new_cart.id 
    end
end