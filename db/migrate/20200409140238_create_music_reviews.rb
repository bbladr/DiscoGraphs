class CreateMusicReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :music_reviews do |t|
      t.integer :star
      t.text :comment
      t.belongs_to :music

      t.timestamps
    end
  end
end
