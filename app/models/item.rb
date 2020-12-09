class Item < ApplicationRecord
    has_many :cart_items 
    has_many :carts, through: :cart_items 
    has_many :seller_items 
    has_many :sellers, through: :seller_items
end
