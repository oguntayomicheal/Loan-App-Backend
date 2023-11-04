# app/models/staff.rb
class Staff < ApplicationRecord
  # Name attribute with presence validation
  validates :name, presence: true

  # Unique ID attribute with uniqueness validation
  # validates :unique_id, presence: true, uniqueness: true

  validates :staff_id, presence: true, uniqueness: true

  # Other attributes or methods specific to the Staff model can be defined here
end
