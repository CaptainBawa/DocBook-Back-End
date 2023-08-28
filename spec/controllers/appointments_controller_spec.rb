# spec/controllers/appointments_controller_spec.rb

require 'rails_helper'

RSpec.describe AppointmentsController, type: :controller do
  describe 'GET index' do
    it 'returns a successful response' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET show' do
    it 'returns a successful response' do
      user = User.create(username: 'user1', email: 'user1@example.com', password: 'password')
      doctor = Doctor.create(
        name: 'Dr. Smith',
        email: 'drsmith@example.com',
        phone_number: '123-456-7890',
        specialty: 'General Medicine',
        price: 300.0,
        user:
      )
      appointment = Appointment.create(appointment_date: Date.today, user:, doctor:)

      get :show, params: { id: appointment.id }
      expect(response).to have_http_status(:success)
    end
  end
end
