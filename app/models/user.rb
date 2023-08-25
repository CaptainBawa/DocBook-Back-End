class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:username]
  has_many :appointments, dependent: :destroy
  has_many :doctors, dependent: :destroy

  validates :username, presence: true, uniqueness: true
end
