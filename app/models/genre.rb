class Genre < ApplicationRecord
  has_many :musics, through: :music_genres
  has_many :music_genres,

  validates :name, exclusion: { in: [nil, ""] }
end
