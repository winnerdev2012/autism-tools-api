class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.text :description
      t.string :format
      t.string :location
      
      t.timestamps
    end
  end
end
