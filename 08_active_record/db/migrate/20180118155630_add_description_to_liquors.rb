class AddDescriptionToLiquors < ActiveRecord::Migration[5.1]
  # ALTER TABLE liquors ADD description TEXT
  def change
    add_column :liquors, :description, :string
    add_column :liquors, :type, :string
  end
end
