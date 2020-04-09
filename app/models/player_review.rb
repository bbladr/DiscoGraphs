class PlayerReview < ApplicationRecord
  belongs_to :player
  belongs_to :review
end
