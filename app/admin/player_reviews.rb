ActiveAdmin.register PlayerReview do

  ActiveAdmin.register PlayerReview do
    permit_params :star, :comment, :player_id, :user_id
  end

end
