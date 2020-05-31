class ChangeDataTypes < ActiveRecord::Migration[5.2]
  def change
    change_column :admins, :firstname, :text
    change_column :admins, :lastname, :text
    change_column :admins, :email, :text
    change_column :admins, :password, :text
    change_column :users, :firstname, :text
    change_column :users, :lastname, :text
    change_column :users, :email, :text
    change_column :users, :password, :text
    change_column :events, :title, :text
    change_column :events, :date, :text
    change_column :events, :description, :text
    change_column :events, :location, :text
    change_column :events, :owner, :text
  end
end
