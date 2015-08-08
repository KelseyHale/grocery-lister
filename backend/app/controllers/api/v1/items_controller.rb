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
      location: [:api, :v1, @item]
    else
      render json: { errors: @item.errors }, status: :unprocessable_entity
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(name: item_params[:name])
      render json: @item,
      status: :ok,
      location: [:api, :v1, @item]
    else
      render json: { errors: @item.errors }, status: :unprocessable_entity
    end
  end

  protected

  def item_params
    params.require(:item).permit(:name)
  end
end
