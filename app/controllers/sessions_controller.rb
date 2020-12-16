class SessionsController < ApplicationController
    def create 
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            # byebug
            session[:user_id] = user.id
            session[:cart_id] = user.carts.last.id
            # byebug
            params[:cart_id] = current_cart
            render json: {
                logged_in: true,
                user: user,
                cart: {
                    id: current_cart.id,
                    items: current_cart.items,
                    total: current_cart_total
                }
            }
        end
    end
    def logout
        reset_session
        cookies.delete("cart_id")
        render json: {
            logged_out: true
        }
    end
end