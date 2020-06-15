class AddColumnsToCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :custom_attributes, :customizable_id, :bigint
    add_column :custom_attributes, :customizable_type, :text
    add_index :custom_attributes, :customizable_type
    add_index :custom_attributes, :customizable_id
  end
end
