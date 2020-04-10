ActiveAdmin.register AlbumReview do

  ActiveAdmin.register AlbumReview do
    permit_params :star, :comment, :album_id, :user_id
  end
 
end