class ItemsController < ApplicationController

  def index
    @items = Item.all  
    render json: @items
  end

  def show
    @item = Item.find(params[:id])
    render json: {item: ItemSerializer.new(@item)}
  end

  def create
    @item = Item.create(item_params)
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end

  private

  def item_params
    params.permit(:name, :description, :completed, :category, :todo_list)
  end

end
