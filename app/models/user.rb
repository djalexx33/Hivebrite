class User < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
