class MusicReview < ApplicationRecord
  belongs_to :music
  belongs_to :user

  validates :star, numericality: true, allow_nil: true
  # validates :comment, 
  validates :music_id, numericality: true
  validates :user_id, numericality: true

end
