class Player < ApplicationRecord
  
  has_many :player_requests, dependent: :destroy

end
