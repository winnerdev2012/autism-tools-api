class CreatePlaylistResources < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_resources do |t|
      t.integer :playlist_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
