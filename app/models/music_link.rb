class MusicLink < ApplicationRecord
  belongs_to :music
  
  validates :name, exclusion: { in: [nil, ""] }, format: { with: /\A[a-zA-Z0-9]+\z/ }
  validates :url, exclusion: { in: [nil, ""] }
  validates :music_id, numericality: true
end
