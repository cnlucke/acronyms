class MakeAuthor < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
    end

    add_column :books, :author_id, :integer
  end
end
