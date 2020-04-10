ActiveAdmin.register AlbumRequestReview do

  ActiveAdmin.register AlbumRequestReview do
    permit_params :star, :comment, :album_request_id, :user_id
  end

end
