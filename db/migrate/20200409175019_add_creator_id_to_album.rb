class AddCreatorIdToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :creator_id, :integer
  end
end
