class MusicReview < ApplicationRecord
  belongs_to :music

  validates :star, numericality: true, allow_nil: true
  validates :comment, allow_blank: true
  validates :music_id, numericality: true
end
