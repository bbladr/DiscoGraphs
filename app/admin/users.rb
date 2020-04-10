ActiveAdmin.register User do

  ActiveAdmin.register User do
    permit_params :name, :nameForView, :description, :password, :email, :image, :role
  end
  
end
