class RemoveValuefromCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    remove_column :custom_attributes, :value, :boolean
  end
end
