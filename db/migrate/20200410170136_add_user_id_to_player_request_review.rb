class AddUserIdToPlayerRequestReview < ActiveRecord::Migration[6.0]
  def change
    add_column :player_request_reviews, :user_id, :integer
  end
end
