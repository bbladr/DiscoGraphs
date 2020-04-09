class Review < ApplicationRecord
  has_many :albums, through: :album_reviews
  has_many :album_reviews,
  accepts_nested_attributes_for :album_reviews

  has_many :musics, through: :music_reviews
  has_many :music_reviews,
  accepts_nested_attributes_for :music_reviews

  has_many :pleyers, through: :player_reviews
  has_many :player_reviews,
  accepts_nested_attributes_for :player_reviews

  has_many :album_requests, through: :album_request_reviews
  has_many :album_request_reviews,
  accepts_nested_attributes_for :album_request_reviews

  has_many :player_requests, through: :player_request_reviews
  has_many :player_request_reviews,
  accepts_nested_attributes_for :player_request_reviews

  validates :star, numericality: true
  validates :comment, exclusion: { in: [nil] }
end
