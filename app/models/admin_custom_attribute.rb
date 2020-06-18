class AdminCustomAttribute < ApplicationRecord
  belongs_to :managable, polymorphic: true
end
