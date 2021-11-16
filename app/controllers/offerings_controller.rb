class OfferingsController < ApplicationController

  def new
    @item = Item.find(params[:item_id])
    @offering = Offering.new
    @user = current_user
    authorize @offering
  end

  def create
    @item = Item.find(params[:item_id])
    @offering = Offering.new(offering_params)
    @offering.posted = @item
    authorize @offering
    .
  end

  def edit
  end

  def update
  end

  private

  def offering_params
    params.require(:offering).permit(:offered_id, :posted_id, :status)
  end
end
