class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all if user
    end
  end

  def index?
    user
  end
end
