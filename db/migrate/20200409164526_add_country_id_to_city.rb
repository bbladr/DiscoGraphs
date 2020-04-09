class AddCountryIdToCity < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :country_id, :integer
  end
end
