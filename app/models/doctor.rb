# frozen_string_literal: true

# The Doctor class is a model that represents a
# doctor and has associations with users,
# appointments, and addresses.
class Doctor < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :doctor_addresses, dependent: :destroy
  has_many :addresses, through: :doctor_addresses
end
