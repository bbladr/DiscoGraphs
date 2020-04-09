class AddPlayerIdToPlayerRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :player_requests, :player_id, :integer
  end
end
