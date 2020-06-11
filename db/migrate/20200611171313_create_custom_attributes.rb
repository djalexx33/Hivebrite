class CreateCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_attributes do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.references :registration, foreign_key: true
      t.text :name
      t.text :value
      t.boolean :value

      t.timestamps
    end
  end
end
