class EmployeeWorkTimeHelp < ApplicationRecord
  belongs_to :employee
  belongs_to :employeeWorkTime
  has_many :employee_work_time_helps
  has_many :employees, through: :employee_work_time_helps
end
