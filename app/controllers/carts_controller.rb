class CartsController < ApplicationController

  # include action called remove_item_from_cart
  # receives params of the item id. searches current_cart.items
  # removes it from array, then renders an updated cart
  def add_item_to_cart
      item = Item.find(params["item"]["id"]) if params["item"]["id"]
      if cookies[:cart_id]
          if check_cart_cookie
              current_cart.items << item 
              current_cart.save
          end
      else 
          cart = Cart.create 
          session[:cart_id] = cart.id
          cookies[:cart_id] = cart.id
          current_cart.items << item 
          current_cart.save
      end 

      render json: {
          cart: {
              id: current_cart.id,
              items: current_cart.items,
              total: current_cart_total
          }
      }  
  end

  def remove_item_from_cart
      item = Item.find(params[:item][:itemId])
   
      if check_cart_cookie && params[:cart_id].to_i == current_cart.id
          # check to see that the cart claimed in cookie is actually referring to the current_cart
          current_cart.items.delete(item)
          current_cart.save
      end
      
      render json: {
          cart: {
              id: current_cart.id,
              items: current_cart.items,
              total: current_cart_total
          }
      }  
  end
end