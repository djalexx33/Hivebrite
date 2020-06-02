class Event < ApplicationRecord
  validates :title, :date, :description, :location, :owner, presence: true
  validates :full, inclusion: { in: [true, false] }
end
