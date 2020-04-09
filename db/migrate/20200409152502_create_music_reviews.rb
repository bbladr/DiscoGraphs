class CreateMusicReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :music_reviews do |t|
      t.references :music, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
