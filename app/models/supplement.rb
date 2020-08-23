class Supplement < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
end
