class AddFavoriteToAnimal < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :fav, :boolean
  end
end
