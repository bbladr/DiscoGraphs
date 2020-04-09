class Review < ApplicationRecord

  has_many :musics, through: :music_reviews
  has_many :music_reviews,
  accepts_nested_attributes_for :music_reviews

end
