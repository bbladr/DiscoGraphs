class City < ApplicationRecord
  belongs_to :country, foreign_key: "country_id"

  has_many :players, through: :player_cities
  has_many :player_cities,

  validates :name, exclusion: { in: [nil, ""] }
  validates :country_id, numericality: true
end
