class ThesisPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def search?
    true
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

  def edit?
    record.user == user
  end

  def bookmark?
    true
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end

  def pdf?
    edit?
  end
end
