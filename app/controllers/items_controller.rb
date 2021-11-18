class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @search_items =
      if params[:query].present?
        Item.search_by_name_and_description(params[:query])
      else
        Item.all
      end
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
