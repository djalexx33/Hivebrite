class CreateUser
  def self.build
    new
  end

  def initialize(params)
    @user = params[:user]
  end

  def call(user)
    user
  end
end
