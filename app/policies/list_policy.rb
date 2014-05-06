class ListPolicy < ApplicationPolicy
  def permitted_attributes
    if user.owner_of?(list)
      [:name]
    end
  end

  def index?
    user.present?
  end

  def create?
    index?
  end

  def show?
    index?
  end

  def destroy?
    index?
  end

end
