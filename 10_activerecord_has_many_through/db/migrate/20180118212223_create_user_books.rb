class CreateUserBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_book do |t|
      t.integer :user_id
      t.integer :book_id
    end
  end
end
