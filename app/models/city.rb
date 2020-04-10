class City < ApplicationRecord
  belongs_to :country, 

  has_many :players, dependent: :nullify

  validates :name, exclusion: { in: [nil, ""] }
  validates :country_id, numericality: true
end
