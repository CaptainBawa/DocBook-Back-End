# The DoctorAddress class is a model that
# represents the association
# between a doctor and an address.
class DoctorAddress < ApplicationRecord
  belongs_to :doctor
  belongs_to :address

  validates :doctor_id, presence: true
  validates :address_id, presence: true
end
