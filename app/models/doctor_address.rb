class DoctorAddress < ApplicationRecord
  belongs_to :doctor
  belongs_to :address
end
