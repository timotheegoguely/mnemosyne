class ThesisPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    record.user == user
  end
  def create?
    record.user == user
  end
end
