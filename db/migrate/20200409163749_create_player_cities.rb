class CreatePlayerCities < ActiveRecord::Migration[6.0]
  def change
    create_table :player_cities do |t|
      t.references :player, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
