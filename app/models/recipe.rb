class Recipe < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings, source: :recipe
end
