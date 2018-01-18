class AddLiquorIdToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :liquor_id, :integer
  end
end
