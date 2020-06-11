class AddColumnsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :registrations, :event, index: true
  end
end
