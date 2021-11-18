class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
  def index
    # @items = policy_scope(Item)
    @items = policy_scope(Item)
    authorize @items
  end

  def show
    @item = Item.find(params[:id])
    @offering = Offering.new
    authorize @item
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(list_params)
    authorize @item
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:item).permit(:name, :description, :photo)
  end
end
