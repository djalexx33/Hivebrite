# class CreateUser
#   def self.call(user)
#     new(user).call
#   end

#   def call
#     private_methods
#     @user[:user].save
#   end

#   private

#   def initialize(user)
#     @user = user
#   end

#   attr_reader :user
# end

class UserSignupService
  attr_reader :user
  def initialize(user)
    @user = user
  end

  def call
    # create user
    create_user
    user[:user].save
    # send confirmation email
    # send_confirmation_email
    # # send sms reminder
    # schedule_sms_reminder
  end

  private

  # def check_requirements
  # end

  def create_user
    User.create(user[user])
  end

  # def send_confirmation_email
  #   ConfirmationMailer.new(@email, @name).call
  # end

  # def schedule_sms_reminder
  #   SmsReminderSchedulerService.new(@phone_number, 2.weeks.from_now).call
  # end
end

# UserSignupService.new('manu@mail.com', 'Manu', '0621582215').call
