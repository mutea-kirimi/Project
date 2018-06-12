class Customer < ApplicationRecord
  has_many :appointments
  has_many :employees, through: :appointments
end
