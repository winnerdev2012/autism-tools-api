class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :name
      t.text :description
      t.text :instructions
      t.text :format
      t.text :location
      t.integer :user_id

      t.timestamps
    end
  end
end
