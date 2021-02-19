class User < ApplicationRecord
    has_secure_password
    has_many :testimonials
    has_many :user_carts 
    has_many :carts, through: :user_carts


end
