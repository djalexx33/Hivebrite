class ChangeRoleToBeTextInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :role, :text
  end
end
