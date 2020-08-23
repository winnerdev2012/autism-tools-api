class Medication < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
end
