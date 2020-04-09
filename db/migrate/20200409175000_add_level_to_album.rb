class AddLevelToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :level, :integer
  end
end
