class RenameUserBooks < ActiveRecord::Migration[5.1]
  def change
    rename_table :user_book, :user_books
  end
end
