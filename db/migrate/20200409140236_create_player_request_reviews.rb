class CreatePlayerRequestReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :player_request_reviews do |t|
      t.integer :star
      t.text :comment
      t.belongs_to :player_request

      t.timestamps
    end
  end
end
