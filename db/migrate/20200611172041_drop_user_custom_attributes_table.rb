class DropUserCustomAttributesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_custom_attributes do |t|
      t.bigint :user_id, null: false
      t.text :name, null: false
      t.text :value, null: false
      t.timestamps null: false
    end
  end
end
