class Part < ApplicationRecord
  has_many :players, through: :player_parts
  has_many :player_parts,

  validates :name, exclusion: { in: [nil, ""] }
  validates :nameForView, exclusion: { in: [nil, ""] }
end
