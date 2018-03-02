class AddDefaultToAnimal < ActiveRecord::Migration[5.1]
  def change
    change_column :animals, :fav, :boolean, default: false
  end
end
