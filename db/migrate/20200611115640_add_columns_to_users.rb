class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :registrations, :user, index: true
  end
end
