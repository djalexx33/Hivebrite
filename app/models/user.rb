class User < ApplicationRecord
  validates :firstname, :lastname, :email, :password, presence: true

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
