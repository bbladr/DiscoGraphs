class Genre < ApplicationRecord
  has_many :albums, through: :album_genres
  has_many :album_genres,

  has_many :musics, through: :music_genres
  has_many :music_genres,

  has_many :players, through: :player_genres
  has_many :player_genres,

  validates :name, exclusion: { in: [nil, ""] }
end
