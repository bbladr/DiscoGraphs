class AddCityIdToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :city_id, :integer
  end
end
