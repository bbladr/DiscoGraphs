class User < ApplicationRecord
  ROLES = { admin: 0, general: 1 }
  enum role: ROLES

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :album_requests, dependent: :destroy
  has_many :player_requests, dependent: :destroy
  has_many :music_reviews, dependent: :destroy
  has_many :player_reviews, dependent: :destroy
  has_many :player_request_reviews, dependent: :destroy
  has_many :album_reviews, dependent: :destroy
  has_many :album_request_reviews, dependent: :destroy

  validates :name, exclusion: { in: [nil, ""] }, uniqueness: true, format: { with: /\A[a-zA-Z0-9]+\z/ }
  # validates :nameForView
  # validates :description
  validates :password, exclusion: { in: [nil, ""] }, confirmation: true, length: { minimum: 8 }
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  # validates :image
  validates :role, inclusion: { in: ROLES.keys.concat(ROLES.keys.map(&:to_s)) }, exclusion: { in: [nil] }
end
