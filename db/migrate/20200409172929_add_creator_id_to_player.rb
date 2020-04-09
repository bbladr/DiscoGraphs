class AddCreatorIdToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :creator_id, :integer
  end
end
