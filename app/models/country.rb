class Country < ApplicationRecord
  has_many :cities, dependent: :destroy
  has_many :players, dependent: :destroy

  validates :name, exclusion: { in: [nil, ""] }
end
