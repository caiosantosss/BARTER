class ItemsController < ApplicationController
  def index
    # @items = policy_scope(Item)
    @items = policy_scope(Item)
  end

  def show
    @item = Item.find(params[:id])
  end
end
