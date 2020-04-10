class AlbumRequestReview < ApplicationRecord
  belongs_to :album_request

  validates :star, numericality: true, allow_nil: true
  validates :comment, allow_blank: true
  validates :album_request_id, numericality: true
end
