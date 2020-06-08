class Event < ApplicationRecord
  validates :title, :date, :description, :location, :owner, presence: true
  validates :full, inclusion: { in: [true, false] }
  belongs_to :user, optional: true
  has_many :registrations
  has_many :users, through: :registrations
  accepts_nested_attributes_for :registrations
end
