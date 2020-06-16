class Tag < ApplicationRecord
  has_many :taggings
  has_many :boards, through: :taggings
  has_many :resources, through: :taggings
  has_many :diets, through: :taggings
  has_many :meals, through: :taggings
  has_many :recipes, through: :taggings
  has_many :documents, through: :taggings
  has_many :medications, through: :taggings
  has_many :playlists, through: :taggings
  has_many :schedules, through: :taggings
  has_many :treatments, through: :taggings
  has_many :users, through: :taggings
end
