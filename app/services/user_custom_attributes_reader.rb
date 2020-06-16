class UserCustomAttributesReader
  def initialize(user)
    @user = user
  end

  def call
    user.profile.custom_attribute.all
  end
end
