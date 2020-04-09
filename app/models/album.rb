class Album < ApplicationRecord
  has_many :album_requests, dependent: :destroy

  has_many :musics, through: :album_musics
  has_many :album_musics,

  has_many :reviews, through: :album_reviews
  has_many :album_reviews,

  accepts_nested_attributes_for :album_musics
end
