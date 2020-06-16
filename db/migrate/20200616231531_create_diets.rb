class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.string :name
      t.text :description
      t.text :instructions

      t.timestamps
    end
  end
end
