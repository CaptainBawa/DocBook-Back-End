require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(username: 'testuser', email: 'test@example.com', password: 'password')
    expect(user).to be_valid
  end

  it 'is not valid without an email' do
    user = User.new(username: 'testuser', password: 'password')
    expect(user).to_not be_valid
  end

  it 'is not valid without a password' do
    user = User.new(username: 'testuser', email: 'test@example.com')
    expect(user).to_not be_valid
  end
end
