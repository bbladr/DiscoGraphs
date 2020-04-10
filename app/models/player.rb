class Player < ApplicationRecord
  GENDERS = { other: 0, male: 1, female: 2 }
  enum gender: GENDERS

  LEVELS = { archive: 0, draft: 1, deleted: 2, private: 3 }
  enum level: LEVELS

  belongs_to :country
  belongs_to :city
  belongs_to :user, foreign_key: "creator_id"
  belongs_to :user, foreign_key: "last_updater_id"

  has_many :player_requests, dependent: :destroy
  has_many :player_reviews, dependent: :destroy
  has_many :player_images, dependent: :destroy

  has_many :parts, through: :player_parts, dependent: :nullify
  has_many :player_parts, dependent: :destroy
  accepts_nested_attributes_for :player_parts

  has_many :genres, through: :player_genres, dependent: :nullify
  has_many :player_genres, dependent: :destroy
  accepts_nested_attributes_for :player_genres

  has_many :albums, through: :album_leader_players, dependent: :restrict_with_exception
  has_many :album_leader_players, dependent: :restrict_with_exception

  has_many :albums, through: :album_players, dependent: :restrict_with_exception
  has_many :album_players, dependent: :restrict_with_exception

  validates :name, exclusion: { in: [nil, ""] }, format: { with: /\A[a-zA-Z]+\z/ }
  validates :nameForView, allow_blank: true
  validates :nameInJapanese, allow_blank: true, format: { with: /\A[ぁ-んー－]+\z/ }
  validates :description, allow_blank: true
  validates :born, allow_blank: true
  validates :died, allow_blank: true
  validates :sex, inclusion: { in: GENDERS.keys.concat(GENDERS.keys.map(&:to_s)) }, exclusion: { in: [nil] }
  validates :level, inclusion: { in: LEVELS.keys.concat(LEVELS.keys.map(&:to_s)) }, exclusion: { in: [nil] }
  validates :country_id, numericality: true
  validates :city_id, numericality: true
  validates :creator_id, numericality: true
  validates :last_updater_id, numericality: true
end
