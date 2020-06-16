class RemoveProfileableFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :profileable_id, :bigint
    remove_column :profiles, :profileable_type, :text
  end
end
