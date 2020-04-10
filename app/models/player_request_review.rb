class PlayerRequestReview < ApplicationRecord
  belongs_to :player_request
  belongs_to :user

  validates :star, numericality: true, allow_nil: true
  # validates :comment
  validates :player_request_id, numericality: true
  validates :user_id, numericality: true
end