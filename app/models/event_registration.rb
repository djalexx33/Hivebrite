class EventRegistration < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :registration_date, presence: true
end
