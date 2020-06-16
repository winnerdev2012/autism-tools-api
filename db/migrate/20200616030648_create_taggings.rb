class CreateTaggings < ActiveRecord::Migration[6.0]
  def change
    create_table :taggings do |t|
      t.integer :tag_id
      t.integer :board_id
      t.integer :resource_id
      t.integer :diet_id
      t.integer :meal_id
      t.integer :recipe_id
      t.integer :document_id
      t.integer :medication_id
      t.integer :playlist_id
      t.integer :schedule_id
      t.integer :treatment_id
      t.integer :user_id

      t.timestamps
    end
  end
end
