class CreateCommunityCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :community_custom_attributes do |t|
      t.references :user, foreign_key: true
      t.text :name
      t.text :value

      t.timestamps
    end
  end
end
