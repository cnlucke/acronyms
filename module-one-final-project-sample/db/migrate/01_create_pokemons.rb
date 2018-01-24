class CreatePokemons < ActiveRecord::Migration[4.2]

  def change
    create_table :pokemons do |t|
      t.integer :pokemon_number
      t.string :name
      t.integer :weight
    end
  end

end
