class AddRequestUserIdToPlayerRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :player_requests, :request_user_id, :integer
  end
end
