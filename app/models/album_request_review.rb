class AlbumRequestReview < ApplicationRecord
  belongs_to :album_request
  belongs_to :user

  validates :star, numericality: true, allow_nil: true
  # validates :comment
  validates :album_request_id, numericality: true
  validates :user_id, numericality: true
end
