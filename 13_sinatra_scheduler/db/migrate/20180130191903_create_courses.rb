class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :professor
      t.integer :credits
      t.boolean :on_schedule, default: false
    end
  end
end
