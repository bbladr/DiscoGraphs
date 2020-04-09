class Music < ApplicationRecord
  has_many :genres, through: :music_genres
  has_many :music_genres,
  accepts_nested_attributes_for :music_genres

  has_many :albums, through: :album_musics
  has_many :album_musics,

  has_many :reviews, dependent: :destroy

  validates :name, exclusion: { in: [nil, ""] }
  validates :nameForView, exclusion: { in: [nil, ""] }
  validates :nameInJapanese, exclusion: { in: [nil, ""] }
  validates :composer, exclusion: { in: [nil, ""] }
end
