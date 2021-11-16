class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where.not(user: user)
    end
  end

  def index?
    true
  end

  def show?
    true
  end
end
