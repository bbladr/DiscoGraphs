class Review < ApplicationRecord
  belongs_to :player, foreign_key: "player_id"
  belongs_to :music, foreign_key: "music_id"
  belongs_to :album, foreign_key: "album_id"
  belongs_to :request, foreign_key: "request_id"

  validates :star, numericality: true
  validates :comment, exclusion: { in: [nil] }
  validates :player_id, numericality: true
  validates :music_id, numericality: true
  validates :album_id, numericality: true
  validates :request_id, numericality: true
end
