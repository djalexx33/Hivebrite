class DropCustomAttributesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :custom_attributes
  end
end
