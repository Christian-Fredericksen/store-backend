class Item < ApplicationRecord
    has_many :testimonials 
    has_many :cart_items 
    has_many :carts, through: :cart_items 
end
