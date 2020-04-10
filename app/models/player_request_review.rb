class RequestReview < ApplicationRecord
  belongs_to :request

  validates :star, numericality: true, allow_nil: true
  validates :comment, allow_blank: true
  validates :request_id, numericality: true
end
