class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nameForView
      t.text :description
      t.string :password
      t.string :email
      t.integer :role
      t.string :image

      t.timestamps
    end
  end
end
