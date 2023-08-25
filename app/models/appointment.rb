# The Appointment class is a model that
# represents an appointment between a user
# and a doctor.
class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :appointment_date, presence: true

end
