class User < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def read(user, arg)
    case arg
    when 'firstname'
      user.firstname
    when 'lastname'
      user.lastname
    when 'email'
      user.email
    when 'password'
      user.password
    else
      'not found'
    end
  end
end
