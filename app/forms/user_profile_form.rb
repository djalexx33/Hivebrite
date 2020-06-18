class UserProfileForm
  include ActiveModel::Model

  def initialize(community_id)
    Community.find(community_id)
    admin_custom_attributes.each(
      self.class.send(:attr_accessor, name)
    )
  end
end
