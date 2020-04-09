class Player < ApplicationRecord
  has_many :parts, through: :player_part
  has_many :player_part,

  has_many :countries, through: :player_countries
  has_many :player_countries,

  has_many :cities, through: :player_cities
  has_many :player_cities,

  has_many :player_requests, dependent: :destroy
end
