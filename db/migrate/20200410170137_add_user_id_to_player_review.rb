class AddUserIdToPlayerReview < ActiveRecord::Migration[6.0]
  def change
    add_column :player_reviews, :user_id, :integer
  end
end
