class ItemsController < ApplicationController
  def index
    # @items = policy_scope(Item)
    @items = Item.all - Item.where(user: current_user)
  end
end
