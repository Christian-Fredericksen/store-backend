class CartsController < ApplicationController
    def add_item_to_cart
         # adding item to existing cart
         item = Item.find(params["item"]["id"])
        #  byebug
        if params[:cart_id] != ""
            #  byebug
             current_cart = Cart.find(params[:cart_id])
             current_cart.save
            #   byebug
                current_cart.items << item 
                current_cart.save
        else #creating a new cart
            cart = Cart.create 
            cart.save
            current_cart = cart 
            #  byebug
            session[:cart_id] = current_cart.id
            # byebug
            params[:cart_id] = current_cart.id
            #  byebug
            current_cart.items << item 
            current_cart.save
          
        end 

        render json: {
            cart: CartSerializer.new(current_cart) 
            
        }  

      
         
    end

    def remove_item_from_cart
        #  byebug
        current_cart = Cart.find(params[:cart_id])
        item =current_cart.cart_items.find_by(item_id: params["item"]["itemId"])
         
         
        # #   byebug
       
        
        #     #  byebug
        
        item.destroy 


        render json: {
            cart: {
                id: current_cart.id,
                items: current_cart.items
            }
        }  
    end
end