class ItemsController < ApplicationController
  def index

    if params[:search] == "All"
      @items = Item.all
    elsif params[:search]
      searchword = params[:search]
      @category = Category.find_by(name: searchword)
      @items = Item.where(category_id: @category.id)
    else
      @items = Item.all
    end
                          # first hash is for user, second
    @search_options = [["Select One", "All"],["All", "All"], ["veggies", "veggies"],["fruit", "fruit"],["spreads", "spreads"] ]
    # Item.where(category: ["fruit","veggies", "spreads"])
    # this is how you select all from category
  end

  def create
    category_name = params[:item][:category]
    if @category = Category.find_by(name: category_name)
    @item = @category.items.create(
        name:params[:item][:name] || "",
        quantity:params[:item][:quantity] || "",
        case_price:params[:item][:case_price] || "",
        unit_price:params[:item][:unit_price] || ""
        )
    redirect_to '/items'
  else
    @category === 'fruit'
    redirect_to '/items'
end
end


  def new
    @item = Item.new

  end

  def show
    @item = Item.find(params[:id])

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
      @category = Category.find_by(name: item_params[:category])
      @item.category_id = @category.id
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
