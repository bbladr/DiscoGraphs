class PlayerLink < ApplicationRecord
  belongs_to :player
  
  validates :name, exclusion: { in: [nil, ""] }, format: { with: /\A[a-zA-Z0-9]+\z/ }
  validates :url, exclusion: { in: [nil, ""] }
  validates :player_id, numericality: true
end
