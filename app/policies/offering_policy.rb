class OfferingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def new?
      true
    end

    def create?
      record.offered.user == user
    end

    def edit?
      record.offered.user == user || record.posted.user == user
    end

    def update?
      record.offered.user == user || record.posted.user == user
    end
  end
end
