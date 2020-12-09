class ItemsController < ApplicationController
  def index 
    items = Item.all
    render json: {
        items: items
    }
  end
end
