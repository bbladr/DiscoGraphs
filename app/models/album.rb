class Album < ApplicationRecord
  LEVELS = { archive: 0, draft: 1, deleted: 2, private: 3 }
  enum level: LEVELS

  belongs_to :user, foreign_key: "creator_id"
  belongs_to :user, foreign_key: "last_updater_id"

  has_many :album_requests, dependent: :destroy
  has_many :album_reviews, dependent: :destroy

  has_many :players, through: :album_leader_players, dependent: :nullify
  has_many :album_leader_players, dependent: :destroy
  accepts_nested_attributes_for :album_leader_players

  has_many :players, through: :album_players, dependent: :nullify
  has_many :album_players, dependent: :destroy
  accepts_nested_attributes_for :album_players

  has_many :genres, through: :album_genres, dependent: :nullify
  has_many :album_genres, dependent: :destroy
  accepts_nested_attributes_for :album_genres

  has_many :musics, through: :album_musics, dependent: :nullify
  has_many :album_musics, dependent: :destroy
  accepts_nested_attributes_for :album_musics


  validates :name, exclusion: { in: [nil, ""] }
  validates :nameForView, exclusion: { in: [nil, ""] }
  validates :nameInJapanese, exclusion: { in: [nil, ""] }
  validates :description, exclusion: { in: [nil] }
  validates :image, exclusion: { in: [nil, ""] }
  validates :releasedIn
  validates :recordedIn
  validates :creator_id, numericality: true
  validates :last_updater_id, numericality: true
  validates :level, inclusion: { in: LEVELS.keys.concat(LEVELS.keys.map(&:to_s)) }, exclusion: { in: [nil] }
end
