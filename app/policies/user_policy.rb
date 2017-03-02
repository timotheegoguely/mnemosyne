class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    true
  end

  def edit?
    record == user
  end

  def update?
    edit?
  end

  def create?
    true
  end

  def destroy?
    record == user
  end

end
