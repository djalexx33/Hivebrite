class UserSignupForm
  include ActiveModel::Model
  attr_accessor :firstname, :lastname, :email, :password, :role
  validates :firstname, :lastname, :email, :password, :role, presence: true

  def save
    valid? && user.save
  end

  private

  def user
    User.new(firstname: firstname,
             lastname: lastname,
             email: email,
             password: password,
             role: role)
  end
end
