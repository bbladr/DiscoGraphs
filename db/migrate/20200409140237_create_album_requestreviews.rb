class CreateAlbumRequestReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :album_request_reviews do |t|
      t.integer :star
      t.text :comment
      t.belongs_to :album_request

      t.timestamps
    end
  end
end
