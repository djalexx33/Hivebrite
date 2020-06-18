class AdminCustomAttributesManager
  def initialize(community_id)
    Community.find(community_id)
  end

  def call
    if @user.admin?
      community
    end
  end

  private

  def create_custom_attributes
    custom_attribute = CustomAttribute.new(custom_attribute_params)
    if @user.custom_attribute.save
      render json: { status: 'success', message: "Your custom attribute #{@user.custom_attribute.name} has been created ." }
    else
      render json: { status: 'failure', message: 'Failed to create your custom attribute' }
    end
  end

  def update_custom_attributes
    if @user.custom_attribute.update(custom_attribute_params)
      render json: { status: 'success', message: "Your custom attribute #{@user.custom_attribute.name} has been updated ." }
    else
      render json: { status: 'failure' }
  end

  def delete_custom_attributes
    @user.custom_attribute.destroy
    render json: { status: 'success', message: "Your custom attribute #{@user.custom_attribute.name} has been deleted ." }
  end

  def custom_attribute_params
    params.require(:custom_attribute).permit(:name)
  end
end
