class CreatePlayerRequestReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :player_request_reviews do |t|
      t.references :player_request, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
