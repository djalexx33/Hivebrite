class Event < ApplicationRecord
  validates :title, :date, :description, :location, :owner, presence: true
  validates :full, inclusion: { in: [true, false] }
  belongs_to :user, optional: true
  has_many :event_registrations
  has_many :custom_attributes
  has_many :users, through: :event_registrations
end
