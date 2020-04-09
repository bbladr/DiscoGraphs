class PlayerPart < ApplicationRecord
  belongs_to :player
  belongs_to :part
end
