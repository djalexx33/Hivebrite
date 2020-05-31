class Event < ApplicationRecord
  validates :title, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :owner, presence: true
  validates :full, presence: true
end
