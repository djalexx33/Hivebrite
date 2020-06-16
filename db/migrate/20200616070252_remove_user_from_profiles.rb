class RemoveUserFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :user_id, :bigint
  end
end
