class CreateEventRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :event_registrations do |t|
      t.text :registration_date

      t.timestamps
    end
  end
end
