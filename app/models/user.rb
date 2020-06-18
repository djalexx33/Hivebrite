class User < ApplicationRecord
  enum role: { admin: 'admin', user: 'user' }
  validates :firstname, :lastname, :password, :role, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :registrations
  has_many :events, through: :registrations
  has_many :memberships
  has_many :communities, through: :memberships
  has_many :custom_attributes, as: :customizable

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end
end
