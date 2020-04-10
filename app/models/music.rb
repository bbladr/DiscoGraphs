class Music < ApplicationRecord
  has_many :genres, through: :music_genres, dependent: :nullify
  has_many :music_genres, dependent: :destroy
  accepts_nested_attributes_for :music_genres

  has_many :albums, through: :album_musics, dependent: :nullify
  has_many :album_musics, dependent: :destroy

  has_many :music_reviews, dependent: :destroy

  validates :name, exclusion: { in: [nil, ""] }
  validates :nameForView, exclusion: { in: [nil, ""] }
  validates :nameInJapanese, exclusion: { in: [nil, ""] }
  validates :composer, exclusion: { in: [nil, ""] }
end
