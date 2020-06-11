class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :registration_custom_attributes
end
