class AddUsernameToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :username, :text
  end
end
