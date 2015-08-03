class Api::V1::ItemsController < ApplicationController
  def index
    @items = Item.all

    render json: @items
  end

  def show
    @item = Item.find(params[:id])

    render json: @item
  end

  def create
    @item = Item.new(name: item_params[:name])

    if @item.save
      render json: @item,
      status: :created,
      location: [:api, :v1, item]
    else
      render json: { errors: item.errors }, status: :unprocessable_entity
    end
  end

  protected

  def item_params
    params.require(:item).permit(:name)
  end
end
