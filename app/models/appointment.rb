class Appointment < ApplicationRecord
  belongs_to :employee
  belongs_to :customer
  belongs_to :service
end
