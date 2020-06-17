class Recipe < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings, source: :recipe
end
