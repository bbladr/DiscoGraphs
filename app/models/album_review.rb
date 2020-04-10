class AlbumReview < ApplicationRecord
  belongs_to :album

  validates :star, numericality: true
  validates :comment, exclusion: { in: [nil] }
  validates :album_id, numericality: true
end
