class PlayerReview < ApplicationRecord
  belongs_to :player

  validates :star, numericality: true
  validates :comment, exclusion: { in: [nil] }
  validates :player_id, numericality: true
end
