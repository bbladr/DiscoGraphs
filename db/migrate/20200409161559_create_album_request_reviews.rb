class CreateAlbumRequestReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :album_request_reviews do |t|
      t.references :album_request, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
