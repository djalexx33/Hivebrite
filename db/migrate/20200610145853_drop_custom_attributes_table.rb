class DropCustomAttributesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :custom_attributes do |t|
      t.text :name, null: false
      t.text :value, null: false
      t.bigint :user_id, null: false
      t.timestamps null: false
    end
  end
end
