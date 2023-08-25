# spec/models/address_spec.rb
require 'rails_helper'

RSpec.describe Address, type: :model do
  it { should have_many(:doctor_addresses).dependent(:destroy) }
  it { should have_many(:doctors).through(:doctor_addresses) }
end
