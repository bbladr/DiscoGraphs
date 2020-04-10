class PlayerImage < ApplicationRecord
  belongs_to :player

  validates :name, exclusion: { in: [nil, ""] }
  validates :player_id, numericality: true
end
