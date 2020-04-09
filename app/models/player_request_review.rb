class PlayerRequestReview < ApplicationRecord
  belongs_to :player_request
  belongs_to :review
end
