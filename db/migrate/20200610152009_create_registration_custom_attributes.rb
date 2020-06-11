class CreateRegistrationCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_custom_attributes do |t|
      t.references :registration, foreign_key: true
      t.text :name
      t.text :value

      t.timestamps
    end
  end
end
