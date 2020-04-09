class Album < ApplicationRecord
  has_many :album_requests, dependent: :destroy

  has_many :players, through: :album_leader_players
  has_many :album_leader_players,
  accepts_nested_attributes_for :album_leader_players

  has_many :players, through: :album_players
  has_many :album_players,
  accepts_nested_attributes_for :album_players

  has_many :musics, through: :album_musics
  has_many :album_musics,
  accepts_nested_attributes_for :album_musics

  has_many :reviews, through: :album_reviews
  has_many :album_reviews,
end
