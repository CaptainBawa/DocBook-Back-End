# spec/models/address_spec.rb
require 'rails_helper'

RSpec.describe Address, type: :model do
  it { should have_many(:doctor_addresses).dependent(:destroy) }
  it { should have_many(:doctors).through(:doctor_addresses) }


  it { should validate_presence_of(:street) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:country) }
end
