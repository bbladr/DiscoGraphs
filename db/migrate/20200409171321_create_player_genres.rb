class CreatePlayerGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :player_genres do |t|
      t.references :player, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
