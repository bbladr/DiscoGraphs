class CreatePlayerParts < ActiveRecord::Migration[6.0]
  def change
    create_table :player_parts do |t|
      t.references :player, null: false, foreign_key: true
      t.references :part, null: false, foreign_key: true

      t.timestamps
    end
  end
end
