class CreateUser
  attr_reader :user

  def initialize(params)
    @user = user.new(params)
  end

  # CreateUser.new(params).call
  def call
    do_the_work(args)
  end
end
