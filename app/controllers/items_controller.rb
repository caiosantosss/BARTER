class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @search_items =
      if params[:query].present?
        policy_scope(Item).search_by_name_and_description(params[:query])
      else
        policy_scope(Item).all
      end
  end

  def show
    @item = Item.find(params[:id])
    @offering = Offering.new
    authorize @item
  end
end
