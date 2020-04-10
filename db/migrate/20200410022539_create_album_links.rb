class CreateAlbumLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :album_links do |t|
      t.string :name
      t.belongs_to :album

      t.timestamps
    end
  end
end
