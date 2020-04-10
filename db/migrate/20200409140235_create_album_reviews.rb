class CreateAlbumReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :album_reviews do |t|
      t.integer :star
      t.text :comment
      t.belongs_to :album

      t.timestamps
    end
  end
end
