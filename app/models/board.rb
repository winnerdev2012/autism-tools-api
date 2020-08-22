class Board < ApplicationRecord
  has_many :board_resources, dependent: :destroy
  has_many :resources, through: :board_resources
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings, source: :board
end
