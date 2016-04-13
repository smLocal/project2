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

  def show

  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      redirect_to '/items'
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

private
  def item_params
    params.require(:item).permit(:name, :quantity, :case_price, :unit_price, :category)

  end

end
# t.string   "name"
#     t.integer  "quantity"
#     t.integer  "case_price"
#     t.integer  "unit_price"
#     t.integer  "category_id"
#     t.string   "category"
