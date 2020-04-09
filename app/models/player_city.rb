class PlayerCity < ApplicationRecord
  belongs_to :player
  belongs_to :city
end
