class AddPlayerIdToImage < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :player_id, :integer
  end
end
