class Ability
  include CanCan::Ability
  
  def initialize(user)
    if user
      can :manage, :all
    else
      can :read, Resource
      can :read, Quote
    end
  end
end