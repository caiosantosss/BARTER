class OfferingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    record.posted.user != user
  end

  # def edit?
  #   record.offered.user == user || record.posted.user == user
  # end

  # def update?
  #   record.offered.user == user || record.posted.user == user
  # end
end
