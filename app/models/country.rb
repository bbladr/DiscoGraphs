class Country < ApplicationRecord
  has_many :cities, dependent: :destroy

  has_many :players, through: :player_countries
  has_many :player_countries,

  validates :name, exclusion: { in: [nil, ""] }
end
