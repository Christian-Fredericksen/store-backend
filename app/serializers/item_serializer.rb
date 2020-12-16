class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :price
  has_many :carts
end 