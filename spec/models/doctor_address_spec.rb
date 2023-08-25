require 'rails_helper'

RSpec.describe DoctorAddress, type: :model do
  describe 'associations' do
    it { should belong_to(:doctor) }
    it { should belong_to(:address) }
  end

  it { should validate_presence_of(:doctor_id) }
  it { should validate_presence_of(:address_id) }
end
