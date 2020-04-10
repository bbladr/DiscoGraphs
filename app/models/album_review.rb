class AlbumReview < ApplicationRecord
  belongs_to :album

  validates :star, numericality: true, allow_nil: true
  validates :comment, allow_blank: true
  validates :album_id, numericality: true
end
