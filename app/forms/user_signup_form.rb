class UserSignupForm
  include ActiveModel::Model
  attr_accessor :firstname, :lastname, :email, :password, :role
  validates :firstname, :lastname, :email, :password, :role, presence: true

  def initialize(community_id)
    Community.find(community_id)
    admin_custom_attribute.each(
      self.class.send(:attr_accessor, name)
    )
  end

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
