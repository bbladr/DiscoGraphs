class CreatePlayerRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :player_requests do |t|
      t.integer :status

      t.timestamps
    end
  end
end
