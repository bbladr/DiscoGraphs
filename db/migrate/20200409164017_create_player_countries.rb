class CreatePlayerCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :player_countries do |t|
      t.references :player, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
