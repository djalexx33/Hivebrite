class UserSignupService
  attr_reader :user
  def initialize(user)
    @user = user
  end

  def call
    # create user
    create_user
  end

  private

  def create_user
    User.create(user[user])
    user[:user].save
  end
end
