require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it 'is valid with valid attributes' do
    user = User.create(username: 'testuser', email: 'test@example.com', password: 'password')
    doctor = Doctor.new(user:)
    expect(doctor).to be_valid
  end

  it 'is not valid without a user' do
    doctor = Doctor.new
    expect(doctor).to_not be_valid
  end

  it 'has many appointments' do
    user = User.create(username: 'testuser', email: 'test@example.com', password: 'password')
    doctor = Doctor.create(user:)
    appointment1 = doctor.appointments.create(appointment_date: Date.today)
    appointment2 = doctor.appointments.create(appointment_date: Date.tomorrow)

    expect(doctor.appointments).to include(appointment1, appointment2)
  end
end
