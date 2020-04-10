class CreatePlayerReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :player_reviews do |t|
      t.integer :star
      t.text :comment
      t.belongs_to :player

      t.timestamps
    end
  end
end
