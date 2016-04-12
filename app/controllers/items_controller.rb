class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    @item = Item.create(name:params[:item][:name],
        quantity:params[:item][:quantity],
        case_price:params[:item][:case_price],
        unit_price:params[:item][:unit_price],
        category_id:params[:item][:category_id],
        category:params[:item][:category],
        )
    redirect_to '/items'
  end


  def new
    @item = Item.new
  end

  def edit

  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

end
# t.string   "name"
#     t.integer  "quantity"
#     t.integer  "case_price"
#     t.integer  "unit_price"
#     t.integer  "category_id"
#     t.string   "category"
