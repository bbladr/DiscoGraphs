class AlbumRequestReview < ApplicationRecord
  belongs_to :album_request

  validates :star, numericality: true
  validates :comment, exclusion: { in: [nil] }
  validates :album_request_id, numericality: true
end
