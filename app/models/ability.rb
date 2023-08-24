class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user

    if user.admin?
      can :manage, :all
    else
      can :create, Appointment
      can :read, Appointment, user_id: user.id
      can :update, Appointment, user_id: user.id

      can :read, Doctor, user_id: user.id
      can :read, Address do |address|
        address.doctors.any? { |doctor| doctor.user_id == user.id }
      end
    end
  end
end
