class RemoveUserFromCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    remove_column :custom_attributes, :user_id, :bigint
  end
end
