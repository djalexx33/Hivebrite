class CreateAdminCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_custom_attributes do |t|
      t.references :managable, polymorphic: true, index: { name: :index_admin_custom_attributes }

      t.timestamps
    end
  end
end
