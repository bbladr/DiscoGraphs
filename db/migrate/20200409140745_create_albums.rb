class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :nameForView
      t.string :nameInJapanese
      t.text :description
      t.date :releasedIn
      t.date :recordedIn

      t.timestamps
    end
  end
end
