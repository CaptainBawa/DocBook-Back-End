require 'rails_helper'

RSpec.describe DoctorAddress, type: :model do
  describe 'associations' do
    it { should belong_to(:doctor) }
    it { should belong_to(:address) }
  end
end
