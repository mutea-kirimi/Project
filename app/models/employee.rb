class Employee < ApplicationRecord
  has_many :appointments
  has_many :customers, through: :appointments
  has_many :none_availabilities
  has_many :employee_work_time_helps
  has_many :employee_work_times, through: :employee_work_time_helps

end
