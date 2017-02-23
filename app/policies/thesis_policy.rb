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
    true
  end
  def create?
    true
  end

  def bookmark?
    true
  end
end
