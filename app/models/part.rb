class Part < ApplicationRecord
  has_many :players, through: :player_parts, dependent: :nullify
  has_many :player_parts, dependent: :destroy

  validates :name, exclusion: { in: [nil, ""] }
  validates :nameForView, exclusion: { in: [nil, ""] }
end
