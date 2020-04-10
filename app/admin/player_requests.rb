ActiveAdmin.register PlayerRequest do

  ActiveAdmin.register PlayerRequest do
    permit_params :player_id, :request_user_id, :status
  end
  
end
