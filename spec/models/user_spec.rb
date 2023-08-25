require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(username: 'testuser', email: 'test@example.com', password: 'password')
    expect(user).to be_valid
  end

  it 'is not valid without an email' do
    user = User.new(username: 'testuser', password: 'password')
    expect(user).to_not be_valid
    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'is not valid without a password' do
    user = User.new(username: 'testuser', email: 'test@example.com')
    expect(user).to_not be_valid
    expect(user.errors[:password]).to include("can't be blank")
  end

  it 'is not valid without a username' do
    user = User.new(email: 'test@example.com', password: 'password')
    expect(user).to_not be_valid
    expect(user.errors[:username]).to include("can't be blank")
  end

  it 'validates the uniqueness of username' do
    User.create(username: 'existinguser', email: 'existing@example.com', password: 'password')
    user = User.new(username: 'existinguser', email: 'test@example.com', password: 'password')
    expect(user).to_not be_valid
    expect(user.errors[:username]).to include('has already been taken')
  end
end
