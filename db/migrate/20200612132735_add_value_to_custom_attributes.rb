class AddValueToCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :custom_attributes, :text_value, :text
    add_column :custom_attributes, :boolean_value, :boolean
  end
end
