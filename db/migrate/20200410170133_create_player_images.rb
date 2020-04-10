class CreatePlayerImages < ActiveRecord::Migration[6.0]
  def change
    create_table :player_images do |t|
      t.string :name
      t.belongs_to :player

      t.timestamps
    end
  end
end
