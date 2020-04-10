class AddUserIdToAlbumRequestReview < ActiveRecord::Migration[6.0]
  def change
    add_column :album_request_reviews, :user_id, :integer
  end
end
