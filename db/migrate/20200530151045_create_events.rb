class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :description
      t.string :location
      t.string :owner
      t.boolean :full

      t.timestamps
    end
  end
end
