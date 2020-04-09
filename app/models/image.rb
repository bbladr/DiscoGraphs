class Image < ApplicationRecord
  belongs_to :player, foreign_key: "player_id"

  validates :name, exclusion: { in: [nil, ""] }
  validates :player_id, numericality: true
end
