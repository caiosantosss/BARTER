class UsersController < ApplicationController
  def index
    @user = policy_scope(User).find(current_user.id)
    @offerings = Offering.all
    authorize current_user
  end
end
