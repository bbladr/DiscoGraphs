ActiveAdmin.register Album do

  ActiveAdmin.register Album do
    permit_params :name, :nameForView, :nameInJapanese, :description, :image, :releasedIn, :recordedIn, :level, :creator_id, :last_updater_id
  end

end
