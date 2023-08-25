require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:doctor) }
  end

  it { should validate_presence_of(:appointment_date) }
end
