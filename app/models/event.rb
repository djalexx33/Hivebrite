class Event < ApplicationRecord
  validates :title, :date, :description, :location, :user, presence: true
  belongs_to :community
  has_many :registrations
  has_many :users, through: :registrations
  has_many :admin_custom_attributes, as: :managable
end
