class AlbumMusic < ApplicationRecord
  belongs_to :music
  belongs_to :album
end
