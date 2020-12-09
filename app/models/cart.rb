class Cart < ApplicationRecord
    has_one :user_cart 
    has_one :user, through: :user_cart
    has_many :cart_items 
    has_many :items, through: :cart_items
    has_one :order
end
