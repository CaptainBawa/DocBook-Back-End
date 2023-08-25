require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:doctor) }
  end
end
