class ChangeCommunityCustomAttributesToUserCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    rename_table :community_custom_attributes, :user_custom_attributes
  end
end
