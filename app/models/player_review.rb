class PlayerReview < ApplicationRecord
  belongs_to :player
  belongs_to :user

  validates :star, numericality: true, allow_nil: true
  # validates :comment
  validates :player_id, numericality: true
  validates :user_id, numericality: true
end
