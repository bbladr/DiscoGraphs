class MusicReview < ApplicationRecord
  belongs_to :music

  validates :star, numericality: true
  validates :comment, exclusion: { in: [nil] }
  validates :music_id, numericality: true
end
