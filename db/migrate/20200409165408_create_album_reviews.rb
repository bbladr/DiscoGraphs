class CreateAlbumReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :album_reviews do |t|
      t.references :album, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
