class Membership < ApplicationRecord
  belongs_to :community
  belongs_to :user
  has_many :custom_attributes, as: :customizable
end
