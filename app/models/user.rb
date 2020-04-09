class User < ApplicationRecord
  ROLES = { admin: 0, general: 1 }
  enum role: ROLES

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :requests, dependent: :destroy

  validates :name, exclusion: { in: [nil, ""] }
  validates :nameForView, exclusion: { in: [nil, ""] }
  validates :description, exclusion: { in: [nil] }
  validates :password, exclusion: { in: [nil, ""] }
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :image, exclusion: { in: [nil, ""] }
  validates :role, inclusion: { in: ROLES.keys.concat(ROLES.keys.map(&:to_s)) }, exclusion: { in: [nil] }
end
