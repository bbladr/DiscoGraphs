class Player < ApplicationRecord
  GENDERS = { other: 0, male: 1, female: 2 }
  enum gender: GENDERS

  LEVELS = { archive: 0, draft: 1, deleted: 2, private: 3 }
  enum level: LEVELS

  belongs_to :country, foreign_key: "country_id"
  belongs_to :city, foreign_key: "city_id"
  belongs_to :user, foreign_key: "creator_id"
  belongs_to :user, foreign_key: "last_updater_id"

  has_many :requests, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :images, dependent: :destroy

  has_many :parts, through: :player_parts
  has_many :player_parts,
  accepts_nested_attributes_for :player_parts

  has_many :genres, through: :player_genres
  has_many :player_genres,
  accepts_nested_attributes_for :player_genres

  has_many :albums, through: :album_leader_players
  has_many :album_leader_players,

  has_many :albums, through: :album_players
  has_many :album_players,

  

  validates :name, exclusion: { in: [nil, ""] }
  validates :nameForView, exclusion: { in: [nil, ""] }
  validates :nameInJapanese, exclusion: { in: [nil, ""] }
  validates :description, exclusion: { in: [nil] }
  validates :born
  validates :died
  validates :sex, inclusion: { in: GENDERS.keys.concat(GENDERS.keys.map(&:to_s)) }, exclusion: { in: [nil] }
  validates :level, inclusion: { in: LEVELS.keys.concat(LEVELS.keys.map(&:to_s)) }, exclusion: { in: [nil] }
  validates :country_id, numericality: true
  validates :city_id, numericality: true
  validates :creator_id, numericality: true
  validates :last_updater_id, numericality: true
end
