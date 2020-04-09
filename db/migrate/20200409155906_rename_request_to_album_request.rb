class RenameRequestToAlbumRequest < ActiveRecord::Migration[6.0]
  def change
    rename_table :requests, :album_requests
  end
end
