# spec/controllers/doctors_controller_spec.rb

require 'rails_helper'

RSpec.describe DoctorsController, type: :controller do
    describe 'GET index' do
        it 'returns a successful response' do
          get :index, params: { user_id: 1 }  # Provide a valid user_id
          expect(response).to have_http_status(:success)
        end
      end
end
