class CreateUser
  def self.call(user)
    new(user).call
  end

  def call
    private_methods
    @user[:user].save
  end

  private

  def initialize(user)
    @user = user
  end

  attr_reader :user
end
