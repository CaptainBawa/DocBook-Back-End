require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it 'is valid with valid attributes' do
    user = User.create(username: 'testuser', email: 'test@example.com', password: 'password')
    doctor = Doctor.new(
      user:,
      name: 'Dr. Test',
      email: 'drtest@example.com',
      phone_number: '1234567890',
      specialty: 'General',
      price: 100.0
    )
    expect(doctor).to be_valid
  end

  it 'is not valid without a user' do
    doctor = Doctor.new
    expect(doctor).to_not be_valid
  end

  it 'has many appointments' do
    user = User.create(username: 'testuser', email: 'test@example.com', password: 'password')
    doctor = Doctor.create(
      user:,
      name: 'Dr. Test',
      email: 'drtest@example.com',
      phone_number: '1234567890',
      specialty: 'General',
      price: 100.0
    )
    appointment1 = doctor.appointments.create(appointment_date: Date.today)
    appointment2 = doctor.appointments.create(appointment_date: Date.tomorrow)

    expect(doctor.appointments).to include(appointment1, appointment2)
  end

  it { should belong_to(:user) }

  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:phone_number) }
  it { should validate_presence_of(:specialty) }
  it { should validate_presence_of(:price) }
end
