class AddImageToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :image, :string
  end
end
