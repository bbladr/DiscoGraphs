class MusicReview < ApplicationRecord
  belongs_to :music
  belongs_to :review
end
