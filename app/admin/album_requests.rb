ActiveAdmin.register AlbumRequest do

  ActiveAdmin.register AlbumRequest do
    permit_params :album_id, :request_user_id, :status
  end
  
end
