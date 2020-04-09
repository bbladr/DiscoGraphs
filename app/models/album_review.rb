class AlbumReview < ApplicationRecord
  belongs_to :album
  belongs_to :review
end
