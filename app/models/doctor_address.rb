# frozen_string_literal: true

# The DoctorAddress class is a model that
# represents the association
# between a doctor and an address.
class DoctorAddress < ApplicationRecord
  belongs_to :doctor
  belongs_to :address
end
