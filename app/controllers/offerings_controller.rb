class OfferingsController < ApplicationController
  # def new
  #   @item = Item.find(params[:item_id])
  #   @offering = Offering.new
  #   @user = current_user

  #   authorize @offering
  # end

  def create
    @item = Item.find(params[:item_id])
    # if params[:offering][:offered_id] == ''
    #   @offering = Offering.new(offering_params)
    # else
    #   offered_item = Item.find(params[:offering][:offered_id])
    #   @offering = Offering.new(offering_params)
    #   @offering.offered = offered_item
    #   @offering.posted = @item
    # end
    @offering = Offering.new(offering_params)
    offered_item = params[:offering][:offered_id] == '' ? nil : Item.find(params[:offering][:offered_id])

    # offered_item = Item.find(params[:offering][:offered_id])
    @offering.offered = offered_item
    @offering.posted = @item
    authorize @offering
    # raise
    if @offering.save
      redirect_to item_path(@item)
    else
      # redirect_to root_path
      render 'items/show'
    end
  end

  # def edit
  # end

  # def update
  # end

  private

  def offering_params
    params.require(:offering).permit(:offering)
  end
end
