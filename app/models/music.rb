class Music < ApplicationRecord
  has_many :genres, through: :music_genres, dependent: :nullify
  has_many :music_genres, dependent: :destroy
  accepts_nested_attributes_for :music_genres

  has_many :albums, through: :album_musics, dependent: :nullify
  has_many :album_musics, dependent: :destroy

  has_many :music_reviews, dependent: :destroy

  validates :name, exclusion: { in: [nil, ""] }, uniqueness: true, format: { with: /\A[a-zA-Z0−9]+\z/ }
  validates :nameForView, allow_blank: true
  validates :nameInJapanese, allow_blank: true, format: { with: /\A[ぁ-んー－]+\z/ }
  validates :composer, allow_blank: true
end
