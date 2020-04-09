class AlbumRequestReview < ApplicationRecord
  belongs_to :album_request
  belongs_to :review
end
