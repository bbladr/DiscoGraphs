class Genre < ApplicationRecord
  has_many :albums, through: :album_genres, dependent: :nullify
  has_many :album_genres, dependent: :destroy

  has_many :musics, through: :music_genres, dependent: :nullify
  has_many :music_genres, dependent: :destroy

  has_many :players, through: :player_genres, dependent: :nullify
  has_many :player_genres, dependent: :destroy

  validates :name, exclusion: { in: [nil, ""] }
end
