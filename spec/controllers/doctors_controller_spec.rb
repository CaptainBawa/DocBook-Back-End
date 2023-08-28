# spec/controllers/doctors_controller_spec.rb

require 'rails_helper'

RSpec.describe DoctorsController, type: :controller do
    describe 'GET index' do
        it 'returns a successful response' do
          get :index, params: { user_id: 1 }  # Provide a valid user_id
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
            user: user
          )
    
          get :show, params: { user_id: user.id, id: doctor.id }
          expect(response).to have_http_status(:success)
        end
      end

      describe 'DELETE destroy' do
        it 'deletes a doctor' do
          user = User.create(username: 'user1', email: 'user1@example.com', password: 'password')
          doctor = Doctor.create(name: 'Dr. Smith', email: 'drsmith@example.com', phone_number: '123-456-7890', specialty: 'General Medicine', price: 300.0, user: user)
    
          expect {
            delete :destroy, params: { user_id: user.id, id: doctor.id }
          }.to change(Doctor, :count).by(-1)
    
          expect(response).to have_http_status(:no_content)
        end
      end
end
