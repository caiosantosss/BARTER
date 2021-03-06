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

  def update
    @offering = Offering.find(params[:id])
    authorize @offering
    if @offering.update(offering_params)
      @offering.reject_others if @offering.accepted?
      query_params = {}
      if @offering.exchanged? || @offering.accepted?
        query_params[:tab] = 'exchanges'
        redirect_to dashboard_path query_params
      elsif @offering.rejected?
        redirect_to item_path(Item.find(@offering.posted_id))
      end
    else
      render 'items/show'
    end
  end

  private

  def offering_params
    params.require(:offering).permit(:offering, :status)
  end
end
