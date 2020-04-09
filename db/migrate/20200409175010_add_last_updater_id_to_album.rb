class AddLastUpdaterIdToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :last_updater_id, :integer
  end
end
