class Music < ApplicationRecord

  has_many :genres, through: :music_genres
  has_many :music_genres,
  accepts_nested_attributes_for :music_genres

  has_many :albums, through: :album_musics
  has_many :album_musics,

  has_many :reviews, through: :music_reviews
  has_many :music_reviews,

  validates :name, exclusion: { in: [nil, ""] }
  validates :nameForView, exclusion: { in: [nil, ""] }
  validates :nameInJapanese, exclusion: { in: [nil, ""] }
  validates :composer, exclusion: { in: [nil, ""] }

end
