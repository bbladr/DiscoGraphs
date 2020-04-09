class Part < ApplicationRecord
  has_many :players, through: :player_part
  has_many :player_part,

  validates :name, exclusion: { in: [nil, ""] }
  validates :nameForView, exclusion: { in: [nil, ""] }
end
