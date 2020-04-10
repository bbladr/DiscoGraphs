class AlbumLink < ApplicationRecord
  belongs_to :album
  
  validates :name, exclusion: { in: [nil, ""] }, format: { with: /\A[a-zA-Z0-9]+\z/ }
  validates :url, exclusion: { in: [nil, ""] }
  validates :album_id, numericality: true
end
