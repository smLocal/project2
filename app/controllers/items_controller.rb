class ItemsController < ApplicationController
  def index
  end

def create
  Item.create(name:params[:item][:name])
  redirect_to '/items'
end


  def new
    @item = Item.new
  end
end
