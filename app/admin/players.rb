ActiveAdmin.register Player do

  ActiveAdmin.register Player do
    permit_params :name, :nameForView, :nameInJapanese, :description, :born, :died, :sex, :level, :country_id, :city_id, :creator_id, :last_updater_id
  end
  
end
