class AddUserIdToMusicReview < ActiveRecord::Migration[6.0]
  def change
    add_column :music_reviews, :user_id, :integer
  end
end
