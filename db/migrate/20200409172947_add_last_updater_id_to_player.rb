class AddLastUpdaterIdToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :last_updater_id, :integer
  end
end
