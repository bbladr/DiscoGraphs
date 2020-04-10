class CreateMusicLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :music_links do |t|
      t.string :name
      t.belongs_to :music_id

      t.timestamps
    end
  end
end
