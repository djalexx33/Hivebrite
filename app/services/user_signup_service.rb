class UserSignupService
  attr_reader :user
  def initialize(user)
    @user = user
  end

  def call
    create_user
    send_admin_mail
  end

  private

  def create_user
    User.create(user[user])
    user[:user].save
  end

  def send_admin_mail
    UserMailer.send_welcome_email(self).deliver_later
  end
end
