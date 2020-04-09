class City < ApplicationRecord
  belongs_to :country, foreign_key: "country_id"

  has_many :players, dependent: :destroy

  validates :name, exclusion: { in: [nil, ""] }
  validates :country_id, numericality: true
end
