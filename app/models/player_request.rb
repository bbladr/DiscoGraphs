class PlayerRequest < ApplicationRecord
  STATUS = { closed: 0, open: 1, draft: 2 }
  enum status: STATUS

  belongs_to :player, foreign_key: "player_id"
  belongs_to :user, foreign_key: "request_user_id"

  has_many :reviews, through: :player_request_reviews
  has_many :player_request_reviews,

  validates :player_id, numericality: true
  validates :request_user_id, numericality: true
  validates :status, inclusion: { in: STATUS.keys.concat(STATUS.keys.map(&:to_s)) }, exclusion: { in: [nil] }
end
