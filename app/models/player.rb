class Player < ApplicationRecord
  has_many :parts, through: :player_part
  has_many :player_part,

  has_many :player_requests, dependent: :destroy
end
