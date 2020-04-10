ActiveAdmin.register PlayerRequestReview do

  ActiveAdmin.register PlayerRequestReview do
    permit_params :star, :comment, :album_request_id, :user_id
  end

end
