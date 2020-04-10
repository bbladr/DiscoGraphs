class CreateAlbumRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :album_requests do |t|
      t.belongs_to :album
      t.belongs_to :user
      t.integer :status

      t.timestamps
    end
  end
end
