class Country < ApplicationRecord
  has_many :cities, dependent: :destroy
  has_many :players, dependent: :nullify

  validates :name, exclusion: { in: [nil, ""] }
end
