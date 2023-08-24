# frozen_string_literal: true

# The Address class represents an address
# and has a many-to-many relationship with
# the Doctor class through the DoctorAddress join table.
class Address < ApplicationRecord
  has_many :doctor_addresses, dependent: :destroy
  has_many :doctors, through: :doctor_addresses
end
