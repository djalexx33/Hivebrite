class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :custom_attributes, as: :customizable
end
