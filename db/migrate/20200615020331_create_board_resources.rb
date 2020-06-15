class CreateBoardResources < ActiveRecord::Migration[6.0]
  def change
    create_table :board_resources do |t|
      t.integer :board_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
