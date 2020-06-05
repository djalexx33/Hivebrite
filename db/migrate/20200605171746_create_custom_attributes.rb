class CreateCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_attributes do |t|

      t.timestamps
    end
  end
end
