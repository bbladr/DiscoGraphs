class CreatePlayerLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :player_links do |t|
      t.string, :name
      t.inteder :player_id

      t.timestamps
    end
  end
end
