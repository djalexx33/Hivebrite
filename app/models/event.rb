class Event < ApplicationRecord
  validates :title, :date, :description, :location, :user, presence: true
  belongs_to :user
  has_many :registrations
  has_many :users, through: :registrations
  has_many :custom_attributes
end
