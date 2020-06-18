class Community < ApplicationRecord
  has_many :memberships
  has_many :events
  has_many :admin_custom_attributes, as: :managable
end
