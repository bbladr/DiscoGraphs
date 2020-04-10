class CreateMusicLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :music_links do |t|
      t.string, :name
      t.inteder :music_id

      t.timestamps
    end
  end
end
