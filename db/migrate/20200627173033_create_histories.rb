class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
      t.integer :user_id
      t.integer :tag_id
      t.integer :board_id
      t.integer :resource_id
      t.integer :diet_id
      t.integer :meal_id
      t.integer :recipe_id
      t.integer :document_id
      t.integer :treatment_id
      t.integer :step_id
      t.integer :medication_id
      t.integer :supplement_id
      t.integer :playlist_id
      t.integer :event_id

      t.timestamps
    end
  end
end
