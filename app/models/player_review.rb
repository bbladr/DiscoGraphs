class PlayerReview < ApplicationRecord
  belongs_to :player

  validates :star, numericality: true, allow_nil: true
  validates :comment, allow_blank: true
  validates :player_id, numericality: true
end
