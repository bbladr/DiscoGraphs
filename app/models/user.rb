class User < ApplicationRecord
  has_many :album_requests, dependent: :destroy
  has_many :player_requests, dependent: :destroy
end
