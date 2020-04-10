class AlbumReview < ApplicationRecord
  belongs_to :album
  belongs_to :user
  
  validates :star, numericality: true, allow_nil: true
  # validates :comment
  validates :album_id, numericality: true
  validates :user_id, numericality: true
end
