class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :profileable, polymorphic: true
end
