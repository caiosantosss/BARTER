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
    if @offering.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  private

  def offering_params
    params.require(:offering).permit(:offered_id, :status)
  end
end
