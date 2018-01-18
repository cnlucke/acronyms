class CreateLiquors < ActiveRecord::Migration[5.1]
  # SQL -> CREATE TABLE liquors (id INTEGER PRIMARY KEY, name TEXT etc)
  def change
    create_table :liquors do |t|
      t.string :name
      t.integer :price
    end
  end
end
