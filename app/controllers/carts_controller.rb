class CartsController < ApplicationController
    def add_item_to_cart
         item = Item.find(params["item"]["id"])
        if params[:cart_id] != ""
             current_cart = Cart.find(params[:cart_id])
             current_cart.save
                current_cart.items << item 
                current_cart.save
        else 
            current_cart = Cart.create 
            session[:cart_id] = current_cart.id
            params[:cart_id] = current_cart.id
            current_cart.items << item 
            current_cart.save
          
        end 

        render json: {
            cart: CartSerializer.new(current_cart) 
            
        }  
         
    end

    def remove_item_from_cart
        current_cart = Cart.find(params[:cart_id])
        item =current_cart.cart_items.find_by(item_id: params["item"]["itemId"])
        
        item.destroy 

        render json: {
            cart: {
                id: current_cart.id,
                items: current_cart.items
            }
        }  
    end
end