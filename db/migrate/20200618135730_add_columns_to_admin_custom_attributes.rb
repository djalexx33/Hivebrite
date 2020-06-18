class AddColumnsToAdminCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_custom_attributes, :name, :text
    add_column :admin_custom_attributes, :required, :boolean
  end
end
