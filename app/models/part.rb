class Part < ApplicationRecord
  has_many :players, through: :player_parts, dependent: :nullify
  has_many :player_parts, dependent: :destroy

  validates :name, exclusion: { in: [nil, ""] }, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/ }
  # validates :nameForView
end
