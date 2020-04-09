class AddRequestUserIdToRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :request_user_id, :integer
  end
end
