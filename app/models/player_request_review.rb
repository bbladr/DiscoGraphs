class RequestReview < ApplicationRecord
  belongs_to :request

  validates :star, numericality: true
  validates :comment, exclusion: { in: [nil] }
  validates :request_id, numericality: true
end
