class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :nameForView
      t.string :nameInJapanese
      t.text :description
      t.date :born
      t.date :died
      t.integer :sex
      t.integer :level
      t.belongs_to :country
      t.belongs_to :city
      t.belongs_to :user

      t.timestamps
    end
  end
end
