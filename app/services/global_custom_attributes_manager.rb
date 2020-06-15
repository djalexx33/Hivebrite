class GlobalCustomAttributesManager
  def initialize(user_id:)
    @user = User.find(user_id)
  end

  def call
    create_custom_attributes
    delete_custom_attributes
    update_custom_attributes
  end

  private

  def create_custom_attributes
    custom_attribute = CustomAttribute.new
    @user.custom_attribute.save
  end

  def delete_custom_attributes
    @user.custom_attribute.delete
  end

  def update_custom_attributes
    @user.custom_attribute
  end
end
