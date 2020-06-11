class CreateEventCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :event_custom_attributes do |t|
      t.references :event, foreign_key: true
      t.text :name
      t.text :value

      t.timestamps
    end
  end
end
