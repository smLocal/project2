class ItemsController < ApplicationController
  def index



    if params[:search]
      searchword = params[:search]
      @items = Item.where(category: searchword)
    else
      @items = Item.all
    end


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
 # @item = Item.find(params[:id])
 #    byebug
 #    if (item.item_params["quantity"] == "") {
 #      @item.category = item_params["category"]
  def update
    @item = Item.find(params[:id])
    @item.name = item_params[:name]
    @item.quantity = item_params[:quantity]
    @item.case_price = item_params[:case_price]
    @item.unit_price = item_params[:unit_price]
    if item_params[:category] != ""
      @item.category = item_params[:category]
    end
    @item.save
    redirect_to '/items'
  end

  def sell
    @item = Item.find(params[:id])
    @item.quantity = @item.quantity.to_i - item_params[:quantity].to_i
    @item.save
    redirect_to items_path
  end

      # @item = Item.find(params[:id])

    # @item.quantity = item_params[:quantity] - user_input

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
