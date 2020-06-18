class CreateCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_attributes do |t|
      t.references :customizable, polymorphic: true, index: { name: :index_custom_attributes }

      t.timestamps
    end
  end
end
