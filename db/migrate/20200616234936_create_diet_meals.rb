class CreateDietMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :diet_meals do |t|
      t.integer :diet_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
