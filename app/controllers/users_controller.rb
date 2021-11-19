class UsersController < ApplicationController
  def index
    @user = policy_scope(User).find(current_user.id)
    @offerings = Offering.all
    authorize current_user
  end

  def article_params
    params.require(:user).permit(:photo)
  end
end
