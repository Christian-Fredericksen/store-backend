class UsersController < ApplicationController
  def create 
      user = User.create(user_params) # creating a user -->
      cart = Cart.create # creating a cart --->
      cart.user = user # assosiate cart with a user --->
      #--------------------------------------------------------
      session[:user_id] = user.id # they save the user id to the session, in order to use it later when we going to login 
      session[:cart_id] = cart.id 
      cookies[:cart_id] = cart.id
      # byebug
      render json: {
        logged_in: true,
        user: current_user,
        cart: {
          id: current_cart.id,
          items: current_cart.items,
          # total: current_cart_total
      }
      }
  end
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end