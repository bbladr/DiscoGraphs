class AddComposerToMusic < ActiveRecord::Migration[6.0]
  def change
    add_column :musics, :composer, :string
  end
end
