class CreatePlayerReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :player_reviews do |t|
      t.references :player, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
