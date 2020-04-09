class AddStatusToRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :status, :integer
  end
end
