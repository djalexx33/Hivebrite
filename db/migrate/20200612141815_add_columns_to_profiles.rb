class AddColumnsToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :profileable_id, :bigint
    add_column :profiles, :profileable_type, :text
    add_index :profiles, :profileable_type
    add_index :profiles, :profileable_id
  end
end
