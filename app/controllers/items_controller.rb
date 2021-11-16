class ItemsController < ApplicationController
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

end
