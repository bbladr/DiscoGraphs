class PlayerGenre < ApplicationRecord
  belongs_to :player
  belongs_to :genre
end
