class CreatePlayerRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :player_requests do |t|
      t.belongs_to :player
      t.belongs_to :user
      t.integer :status

      t.timestamps
    end
  end
end
