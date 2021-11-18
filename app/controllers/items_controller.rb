class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
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

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(list_params)
    @item.user = current_user
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
