class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :treatment_id
      t.integer :step_number
      t.string :name
      t.text :description
      t.text :instructions
      t.integer :medication_id, default: nil
      t.integer :supplement_id, default: nil
      t.integer :dose_qty, default: nil
      t.string :dose_unit, default: nil
      t.string :dose_description, default: nil
      t.datetime :dose_start, default: nil
      t.datetime :dose_end, default: nil

      t.timestamps
    end
  end
end
