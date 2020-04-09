class Album < ApplicationRecord

  has_many :album_requests, dependent: :destroy

  has_many :musics, through: :album_musics
  has_many :album_musics,
  accepts_nested_attributes_for :album_musics

end
