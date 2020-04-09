class CreateAlbumLeaderPlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :album_leader_players do |t|
      t.references :album, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
