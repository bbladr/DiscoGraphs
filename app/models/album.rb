class Album < ApplicationRecord
  LEVELS = { archive: 0, draft: 1, deleted: 2, private: 3 }
  enum level: LEVELS

  has_many :album_requests, dependent: :destroy

  has_many :players, through: :album_leader_players
  has_many :album_leader_players,
  accepts_nested_attributes_for :album_leader_players

  has_many :players, through: :album_players
  has_many :album_players,
  accepts_nested_attributes_for :album_players

  has_many :genres, through: :album_genres
  has_many :album_genres,
  accepts_nested_attributes_for :album_genres

  has_many :musics, through: :album_musics
  has_many :album_musics,
  accepts_nested_attributes_for :album_musics

  has_many :reviews, through: :album_reviews
  has_many :album_reviews,

  validates :name, exclusion: { in: [nil, ""] }
  validates :nameForView, exclusion: { in: [nil, ""] }
  validates :nameInJapanese, exclusion: { in: [nil, ""] }
  validates :description, exclusion: { in: [nil] }
  validates :releasedIn
  validates :recordedIn
  validates :creator_id, numericality: true
  validates :last_updater_id, numericality: true
  validates :level, inclusion: { in: LEVELS.keys.concat(LEVELS.keys.map(&:to_s)) }, exclusion: { in: [nil] }
end
