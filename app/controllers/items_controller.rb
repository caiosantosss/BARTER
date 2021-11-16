class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
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
