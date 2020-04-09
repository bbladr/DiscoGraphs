class AddAlbumIdToRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :album_id, :integer
  end
end
