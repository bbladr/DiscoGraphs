class City < ApplicationRecord
  belongs_to :country

  has_many :players, dependent: :nullify

  validates :name, exclusion: { in: [nil, ""] }, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :country_id, numericality: true
end
