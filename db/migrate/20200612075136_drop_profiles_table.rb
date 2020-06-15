class DropProfilesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :profiles do |t|
      t.bigint :user_id, null: false
      t.bigint :custom_attribute_id, null: false
      t.timestamps null: false
    end
  end
end
