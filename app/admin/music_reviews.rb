ActiveAdmin.register MusicReview do

  ActiveAdmin.register MusicReview do
    permit_params :star, :comment, :music_id, :user_id
  end
  
end
