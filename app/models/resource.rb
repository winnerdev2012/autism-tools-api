class Resource < ApplicationRecord
  has_many :board_resources
  has_many :boards, through: :board_resources
  has_many :playlist_resources
  has_many :playlists, through: :playlist_resources
  has_many :taggings
  has_many :tags, through: :taggings, source: :resource
end
