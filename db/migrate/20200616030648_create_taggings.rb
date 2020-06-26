class CreateTaggings < ActiveRecord::Migration[6.0]
  def change
    create_table :taggings do |t|
      t.integer :tag_id
      t.integer :board_id, default: nil
      t.integer :resource_id, default: nil
      t.integer :diet_id, default: nil
      t.integer :meal_id, default: nil
      t.integer :recipe_id, default: nil
      t.integer :document_id, default: nil
      t.integer :medication_id, default: nil
      t.integer :playlist_id, default: nil
      t.integer :schedule_id, default: nil
      t.integer :treatment_id, default: nil
      t.integer :step_id, default: nil

      t.timestamps
    end
  end
end
